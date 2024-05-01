import "../../data.dart";

class DiseasesLocalDataSourceImpl extends DiseasesLocalDataSource {
  final StorageService service;
  DiseasesLocalDataSourceImpl({required this.service});
}
