import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jalatest/features/features.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'unit_test.mocks.dart';
import 'mock_data.dart';

@GenerateNiceMocks([
  MockSpec<DiseasesRepository>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<InjectorService>(onMissingStub: OnMissingStub.returnDefault),
])
void main() {
  late MockDiseasesRepository repository;
  late MockInjectorService injector;

  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    injector = MockInjectorService();
    await injector.setupLocator(isTesting: true);
    repository = MockDiseasesRepository();
  });

  group('repository test', () {
    test('Should return list diseases with 1 length', () async {
      // arrange
      const diseasesRequest = DiseasesRequest(page: 1, perPage: 1);
      when(repository.getDiseases(diseasesRequest)).thenAnswer(
          (realInvocation) async => BaseResponse.fromJson(mockDiseases,
              (json) => (json as List).toResponseList(Disease.fromJson)));
      // act
      final BaseResponse<List<Disease>> response =
          await repository.getDiseases(diseasesRequest);
      // assert
      expect(response.data?.length, 1);
      verify(repository.getDiseases(diseasesRequest));
    });
  });
}
