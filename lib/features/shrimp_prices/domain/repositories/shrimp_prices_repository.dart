import '../../../features.dart';

abstract class ShrimpPricesRepository {
  Future<BaseResponse<List<ShrimpPrice>>> getShrimpPrices(
      ShrimpPricesRequest request);
}
