import "../../data.dart";

class DiseasesRemoteDataSourceImpl extends DiseasesRemoteDataSource {
  final ApiService service;
  DiseasesRemoteDataSourceImpl({required this.service});

  @override
  Future<BaseResponse<List<Disease>>> getDiseases(
      DiseasesRequest request) async {
    try {
      final BaseResponse<List<Disease>> response =
          await service.get<List<Disease>>(
        URL.diseases,
        parseDiseases,
        queryParams: request.toJson(),
      );

      return response;
    } on ServerException catch (e) {
      throw e.message;
    } on Failure catch (e) {
      throw e.message;
    } catch (e) {
      throw 'Something went wrong went getDiseases';
    }
  }

  List<Disease> parseDiseases(Object? data) {
    if (data.runtimeType == List) {
      return (data as List).toResponseList((json) => Disease.fromJson(json));
    }

    return [];
  }
}
