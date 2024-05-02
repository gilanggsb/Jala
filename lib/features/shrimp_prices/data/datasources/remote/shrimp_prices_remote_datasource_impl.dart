import "../../data.dart";

class ShrimpPricesRemoteDataSourceImpl extends ShrimpPricesRemoteDataSource {
  final ApiService service;
  ShrimpPricesRemoteDataSourceImpl({required this.service});

  @override
  Future<BaseResponse<List<ShrimpPrice>>> getShrimpPrices(
      ShrimpPricesRequest request) async {
    try {
      final BaseResponse<List<ShrimpPrice>> response =
          await service.get<List<ShrimpPrice>>(
        URL.shrimpPrices,
        parseShrimpPrices,
        queryParams: request.toJson(),
      );

      return response;
    } on ServerException catch (e) {
      throw e.message;
    } on Failure catch (e) {
      throw e.message;
    } catch (e) {
      throw 'getShrimpPrices error : Something wrong $e';
    }
  }

  List<ShrimpPrice> parseShrimpPrices(Object? data) {
    if (data.runtimeType == List) {
      return (data as List).toResponseList(ShrimpPrice.fromJson);
    }

    return [];
  }
}
