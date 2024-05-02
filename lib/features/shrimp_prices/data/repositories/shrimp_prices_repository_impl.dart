import "../data.dart";
import "../../domain/domain.dart";

class ShrimpPricesRepositoryImpl extends ShrimpPricesRepository {
  final ShrimpPricesLocalDataSource localDataSource;
  final ShrimpPricesRemoteDataSource remoteDataSource;
  ShrimpPricesRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<BaseResponse<List<ShrimpPrice>>> getShrimpPrices(
          ShrimpPricesRequest request) =>
      remoteDataSource.getShrimpPrices(request);
}
