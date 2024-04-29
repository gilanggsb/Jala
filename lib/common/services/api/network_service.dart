import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkService {
  Future<bool> get hasConnection;
}

class NetworkServiceImpl extends NetworkService {
  final InternetConnectionChecker connection;
  NetworkServiceImpl(this.connection);

  @override
  Future<bool> get hasConnection async => await connection.hasConnection;
}
