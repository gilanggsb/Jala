import "../data.dart";
import "../../domain/domain.dart";
class <FTName | capitalize&capitalcase&replace(' ', '')>RepositoryImpl extends <FTName | capitalize&capitalcase&replace(' ', '')>Repository {
  final <FTName | capitalize&capitalcase&replace(' ', '')>LocalDataSource localDataSource;
  final <FTName | capitalize&capitalcase&replace(' ', '')>RemoteDataSource remoteDataSource;
  <FTName | capitalize&capitalcase&replace(' ', '')>RepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });
}