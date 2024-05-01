import '../../../../../common/common.dart';
import '../../models/models.dart';

abstract class DiseasesRemoteDataSource {
  Future<BaseResponse<List<Disease>>> getDiseases(DiseasesRequest request);
}
