import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jalatest/features/features.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'mock_data.dart';
import 'unit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<InjectorService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<DetailShrimpPricesRepository>(
      onMissingStub: OnMissingStub.returnDefault),
])
void main() {
  late MockDetailShrimpPricesRepository repository;
  late MockInjectorService injector;

  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();
    injector = MockInjectorService();
    await injector.setupLocator(isTesting: true);
    repository = MockDetailShrimpPricesRepository();
  });

  test('Should return shrimp price with id 1', () async {
    // arrange
    const shrimpPricesRequest = ShrimpPricesRequest(shrimpWith: ['creator']);
    const detailShrimpPricesParams = DetailShrimpPricesParams(
        id: 5897, shrimpPricesRequest: shrimpPricesRequest);
    when(repository.getDetail(detailShrimpPricesParams)).thenAnswer(
        (realInvocation) async =>
            BaseResponse.fromJson(mockDetailShrimpPrices, (json) {
              return ShrimpPrice.fromJson(json);
            }));
    // act
    final BaseResponse<ShrimpPrice> response =
        await repository.getDetail(detailShrimpPricesParams);
    // assert
    expect(response.data?.id, 5897);
    verify(repository.getDetail(detailShrimpPricesParams));
  });
}
