import "../data.dart";
import "../../domain/domain.dart";

class JalaMediaRepositoryImpl extends JalaMediaRepository {
  final JalaMediaLocalDataSource localDataSource;
  final JalaMediaRemoteDataSource remoteDataSource;
  JalaMediaRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });
}
