import "package:jalatest/features/shrimp_prices/data/models/shrimp_price/shrimp_price.dart";

import "../data.dart";
import "../../domain/domain.dart";

class DetailShrimpPricesRepositoryImpl extends DetailShrimpPricesRepository {
  final DetailShrimpPricesLocalDataSource localDataSource;
  final DetailShrimpPricesRemoteDataSource remoteDataSource;
  DetailShrimpPricesRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<BaseResponse<ShrimpPrice>> getDetail(
          DetailShrimpPricesParams request) =>
      remoteDataSource.getDetail(request);
}
