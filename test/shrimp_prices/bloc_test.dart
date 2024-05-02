import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jalatest/features/features.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';

import 'unit_test.mocks.dart';
import 'mock_data.dart';

@GenerateNiceMocks([
  MockSpec<ShrimpPricesRepository>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<InjectorService>(onMissingStub: OnMissingStub.returnDefault),
])
void main() {
  late MockShrimpPricesRepository repository;
  late MockInjectorService injector;
  late ShrimpPricesBloc bloc;

  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    injector = MockInjectorService();
    await injector.setupLocator(isTesting: true);
    repository = MockShrimpPricesRepository();
    bloc = ShrimpPricesBloc(repository: repository);
  });

  tearDownAll(() {
    bloc.close();
  });

  test('should return initial state ', () {
    expect(bloc.state, const ShrimpPricesState.initial());
  });

  group('shrimpPrices bloc ', () {
    blocTest<ShrimpPricesBloc, ShrimpPricesState>(
      'emits [ShrimpPricesState.success] when ShrimpPricesEvent is getData.',
      build: () {
        when(repository.getShrimpPrices(bloc.shrimpPricesRequest)).thenAnswer(
            (realInvocation) async => BaseResponse.fromJson(mockShrimpPrice,
                (json) => (json as List).toResponseList(ShrimpPrice.fromJson)));
        return bloc;
      },
      act: (bloc) => bloc.add(const ShrimpPricesEvent.getData()),
      expect: () async {
        return <ShrimpPricesState>[
          const ShrimpPricesState.loading(),
          ShrimpPricesState.success(bloc.shrimpPrices)
        ];
      },
    );

    blocTest<ShrimpPricesBloc, ShrimpPricesState>(
      'emits [ShrimpPricesState.success] when ShrimpPricesEvent is nextPage and currentPage is 2.',
      build: () {
        bloc.resShrimpPrices = BaseResponse.fromJson(
          mockShrimpPrices,
          (json) => (json as List).toResponseList(ShrimpPrice.fromJson),
        );
        when(repository.getShrimpPrices(bloc.shrimpPricesRequest
                .copyWith(page: (bloc.shrimpPricesRequest.page ?? 1) + 1)))
            .thenAnswer((realInvocation) async => BaseResponse.fromJson(
                mockShrimpPricesPage2,
                (json) => (json as List).toResponseList(ShrimpPrice.fromJson)));
        return bloc;
      },
      act: (bloc) {
        bloc.add(const ShrimpPricesEvent.nextPage());
      },
      expect: () async {
        expect(bloc.resShrimpPrices?.meta?.currentPage, 2);
        return <ShrimpPricesState>[
          ShrimpPricesState.success(bloc.shrimpPrices, isLoading: true),
          ShrimpPricesState.success(bloc.shrimpPrices, isLoading: false)
        ];
      },
    );

    blocTest<ShrimpPricesBloc, ShrimpPricesState>(
      'emits [ShrimpPricesState.success] when ShrimpPricesEvent is nextPage and currentPage is lastPage',
      build: () {
        bloc.shrimpPricesRequest =
            bloc.shrimpPricesRequest.copyWith(page: 5313);
        bloc.resShrimpPrices = BaseResponse.fromJson(
          mockShrimpPricesReachedEnd,
          (json) => (json as List).toResponseList(ShrimpPrice.fromJson),
        );
        when(repository.getShrimpPrices(bloc.shrimpPricesRequest)).thenAnswer(
            (realInvocation) async => BaseResponse.fromJson(
                mockShrimpPricesReachedEnd,
                (json) => (json as List).toResponseList(ShrimpPrice.fromJson)));
        return bloc;
      },
      act: (bloc) async {
        bloc.add(const ShrimpPricesEvent.nextPage());
      },
      expect: () async {
        return <ShrimpPricesState>[
          ShrimpPricesState.success(bloc.shrimpPrices, isLoading: true),
          ShrimpPricesState.success(
            bloc.shrimpPrices,
            isLoading: false,
            hasReachedEnd: true,
          )
        ];
      },
    );
  });
}
