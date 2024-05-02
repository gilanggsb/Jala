import '../../../../common/common.dart';
import '../../domain/domain.dart';
import '../../presentation/presentation.dart';
import '../data.dart';

void <FTName | lowercasefirstchar&replace(' ', '')>Injection() {
  //bloc
  getIt.registerFactory<<FTName | capitalize&capitalcase&replace(' ', '')>Bloc>(
    () => <FTName | capitalize&capitalcase&replace(' ', '')>Bloc(
      repository: getIt(),
    ),
  );
  //repository
  getIt.registerFactory<<FTName | capitalize&capitalcase&replace(' ', '')>Repository>(
    () => <FTName | capitalize&capitalcase&replace(' ', '')>RepositoryImpl(
      localDataSource: getIt(),
      remoteDataSource: getIt(),
    ),
  );
  //datasource
  getIt.registerLazySingleton<<FTName | capitalize&capitalcase&replace(' ', '')>RemoteDataSource>(
    () => <FTName | capitalize&capitalcase&replace(' ', '')>RemoteDataSourceImpl(
      service: getIt(),
    ),
  );
  getIt.registerLazySingleton<<FTName | capitalize&capitalcase&replace(' ', '')>LocalDataSource>(
    () => <FTName | capitalize&capitalcase&replace(' ', '')>LocalDataSourceImpl(
      service: getIt(),
    ),
  );
  //usecase
  
}
