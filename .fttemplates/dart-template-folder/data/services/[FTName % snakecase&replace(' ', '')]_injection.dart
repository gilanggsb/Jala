import '../../../../common/common.dart';
import '../../domain/domain.dart';
import '../../presentation/presentation.dart';
import '../data.dart';

void <FTName | lowercasefirstchar&replace(' ', '')>Injection() {
  //bloc
  
  //repository
  getIt.registerFactory<<FTName | capitalize&capitalcase&replace(' ', '')>Repository>(
    () => <FTName | capitalize>RepositoryImpl(
      localDataSource: getIt(),
      remoteDataSource: getIt(),
    ),
  );
  //datasource
  getIt.registerLazySingleton<<FTName | capitalize&capitalcase&replace(' ', '')>RemoteDataSource>(
    () => <FTName | capitalize>RemoteDataSourceImpl(
      service: getIt(),
    ),
  );
  getIt.registerLazySingleton<<FTName | capitalize&capitalcase&replace(' ', '')>LocalDataSource>(
    () => <FTName | capitalize>LocalDataSourceImpl(
      service: getIt(),
    ),
  );
  //usecase
  
}
