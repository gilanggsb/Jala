import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jalatest/features/features.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';

import 'mock_data.dart';
import 'unit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<DetailShrimpPricesRepository>(
      onMissingStub: OnMissingStub.returnDefault),
  MockSpec<InjectorService>(onMissingStub: OnMissingStub.returnDefault),
])
void main() {
  late MockDetailShrimpPricesRepository repository;
  late MockInjectorService injector;
  late DetailShrimpPricesBloc bloc;

  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    injector = MockInjectorService();
    await injector.setupLocator(isTesting: true);
    repository = MockDetailShrimpPricesRepository();
    bloc = DetailShrimpPricesBloc(repository: repository);
  });

  tearDownAll(() {
    bloc.close();
  });

  test('should return initial state ', () {
    expect(bloc.state, const DetailShrimpPricesState.initial());
  });

  group('shrimpPrices bloc ', () {
    const shrimpPricesRequest = ShrimpPricesRequest(shrimpWith: ['creator']);
    const detailShrimpPricesParams = DetailShrimpPricesParams(
        id: 5897, shrimpPricesRequest: shrimpPricesRequest);
    blocTest<DetailShrimpPricesBloc, DetailShrimpPricesState>(
      'emits [DetailDetailShrimpPricesState.success] when DetailShrimpPricesEvent is getData.',
      build: () {
        when(repository.getDetail(detailShrimpPricesParams)).thenAnswer(
            (realInvocation) async => BaseResponse.fromJson(
                mockDetailShrimpPrices, (json) => ShrimpPrice.fromJson(json)));
        bloc.detailShrimpPricesParams = detailShrimpPricesParams;
        return bloc;
      },
      act: (bloc) => bloc.add(const DetailShrimpPricesEvent.getData()),
      expect: () async {
        expect(bloc.shrimpPrice?.id, 5897);

        return <DetailShrimpPricesState>[
          const DetailShrimpPricesState.loading(),
          DetailShrimpPricesState.success(bloc.shrimpPrice)
        ];
      },
    );
  });
}
