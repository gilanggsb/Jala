import "../../../../features.dart";

class DetailShrimpPricesRemoteDataSourceImpl
    extends DetailShrimpPricesRemoteDataSource {
  final ApiService service;
  DetailShrimpPricesRemoteDataSourceImpl({required this.service});

  @override
  Future<BaseResponse<ShrimpPrice>> getDetail(
      DetailShrimpPricesParams request) async {
    try {
      final BaseResponse<ShrimpPrice> response = await service.get<ShrimpPrice>(
        URL.detailShrimPrice(request.id),
        (json) => ShrimpPrice.fromJson(json as Map<String, dynamic>),
        queryParams: request.shrimpPricesRequest.toJson(),
      );

      return response;
    } on ServerException catch (e) {
      throw e.message;
    } on Failure catch (e) {
      throw e.message;
    } catch (e) {
      throw 'getDetailShrimpPrice error : Something wrong $e';
    }
  }
}
