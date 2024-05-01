import "../data.dart";
import "../../domain/domain.dart";

class DiseasesRepositoryImpl extends DiseasesRepository {
  // final DiseasesLocalDataSource localDataSource;
  final DiseasesRemoteDataSource remoteDataSource;
  DiseasesRepositoryImpl({
    // required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<BaseResponse<List<Disease>>> getDiseases(DiseasesRequest request) =>
      remoteDataSource.getDiseases(request);
}
