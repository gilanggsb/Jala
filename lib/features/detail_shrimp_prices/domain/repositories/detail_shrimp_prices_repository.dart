import '../../../features.dart';

abstract class DetailShrimpPricesRepository {
  Future<BaseResponse<ShrimpPrice>> getDetail(DetailShrimpPricesParams request);
}
