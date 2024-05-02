import 'package:jalatest/features/features.dart';

abstract class ShrimpPricesRemoteDataSource {
  Future<BaseResponse<List<ShrimpPrice>>> getShrimpPrices(
      ShrimpPricesRequest request);
}
