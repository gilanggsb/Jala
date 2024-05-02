import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jalatest/features/features.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'mock_data.dart';
import 'unit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<InjectorService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ShrimpPricesRepository>(onMissingStub: OnMissingStub.returnDefault),
])
void main() {
  late MockShrimpPricesRepository repository;
  late MockInjectorService injector;

  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();
    injector = MockInjectorService();
    await injector.setupLocator(isTesting: true);
    repository = MockShrimpPricesRepository();
  });

  test('Should return list shrimp prices with 1 length', () async {
    // arrange
    const shrimpPricesRequest = ShrimpPricesRequest(page: 1, perPage: 1);
    when(repository.getShrimpPrices(shrimpPricesRequest)).thenAnswer(
        (realInvocation) async => BaseResponse.fromJson(mockShrimpPrices,
            (json) => (json as List).toResponseList(ShrimpPrice.fromJson)));
    // act
    final BaseResponse<List<ShrimpPrice>> response =
        await repository.getShrimpPrices(shrimpPricesRequest);
    // assert
    expect(response.data?.length, 1);
    verify(repository.getShrimpPrices(shrimpPricesRequest));
  });
}
