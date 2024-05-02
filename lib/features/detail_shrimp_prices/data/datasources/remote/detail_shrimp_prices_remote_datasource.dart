import '../../../../features.dart';

abstract class DetailShrimpPricesRemoteDataSource {
  Future<BaseResponse<ShrimpPrice>> getDetail(DetailShrimpPricesParams request);
}
