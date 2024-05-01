import '../../../features.dart';

abstract class DiseasesRepository {
  Future<BaseResponse<List<Disease>>> getDiseases(DiseasesRequest request);
}
