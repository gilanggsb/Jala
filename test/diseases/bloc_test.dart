import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jalatest/features/features.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';

import 'unit_test.mocks.dart';
import 'mock_data.dart';

@GenerateNiceMocks([
  MockSpec<DiseasesRepository>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<InjectorService>(onMissingStub: OnMissingStub.returnDefault),
])
void main() {
  late MockDiseasesRepository repository;
  late MockInjectorService injector;
  late DiseasesBloc bloc;

  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    injector = MockInjectorService();
    await injector.setupLocator(isTesting: true);
    repository = MockDiseasesRepository();
    bloc = DiseasesBloc(repository: repository);
  });

  tearDownAll(() {
    bloc.close();
  });

  test('should return initial state ', () {
    expect(bloc.state, const DiseasesState.initial());
  });

  group('diseases bloc ', () {
    blocTest<DiseasesBloc, DiseasesState>(
      'emits [DiseasesState.success] when DiseasesEvent is getData.',
      build: () {
        when(repository.getDiseases(bloc.diseasesRequest)).thenAnswer(
            (realInvocation) async => BaseResponse.fromJson(mockDiseases,
                (json) => (json as List).toResponseList(Disease.fromJson)));
        return bloc;
      },
      act: (bloc) => bloc.add(const DiseasesEvent.getData()),
      expect: () async {
        return <DiseasesState>[
          const DiseasesState.loading(),
          DiseasesState.success(bloc.diseases)
        ];
      },
    );

    blocTest<DiseasesBloc, DiseasesState>(
      'emits [DiseasesState.success] when DiseasesEvent is nextPage and currentPage is 2.',
      build: () {
        when(repository.getDiseases(bloc.diseasesRequest
                .copyWith(page: (bloc.diseasesRequest.page ?? 1) + 1)))
            .thenAnswer((realInvocation) async => BaseResponse.fromJson(
                mockDiseasesPage2,
                (json) => (json as List).toResponseList(Disease.fromJson)));
        return bloc;
      },
      act: (bloc) {
        bloc.resDiseases = BaseResponse.fromJson(
          mockDiseases,
          (json) => (json as List).toResponseList(Disease.fromJson),
        );
        bloc.add(const DiseasesEvent.nextPage());
      },
      expect: () async {
        expect(bloc.resDiseases?.meta?.currentPage, 2);
        return <DiseasesState>[
          DiseasesState.success(bloc.diseases, isLoading: true),
          DiseasesState.success(bloc.diseases, isLoading: false)
        ];
      },
    );

    blocTest<DiseasesBloc, DiseasesState>(
      'emits [DiseasesState.success] when DiseasesEvent is nextPage and currentPage is lastPage',
      build: () {
        bloc.resDiseases = BaseResponse.fromJson(
          mockDiseasesReachedEnd,
          (json) => (json as List).toResponseList(Disease.fromJson),
        );
        when(repository.getDiseases(bloc.diseasesRequest.copyWith(page: 12)))
            .thenAnswer((realInvocation) async => BaseResponse.fromJson(
                mockDiseasesReachedEnd,
                (json) => (json as List).toResponseList(Disease.fromJson)));
        return bloc;
      },
      act: (bloc) async {
        bloc.add(const DiseasesEvent.nextPage());
      },
      expect: () async {
        return <DiseasesState>[
          DiseasesState.success(bloc.diseases, isLoading: true),
          DiseasesState.success(
            bloc.diseases,
            isLoading: false,
            hasReachedEnd: true,
          )
        ];
      },
    );
  });
}
