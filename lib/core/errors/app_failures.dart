abstract class AppFailure {
  const AppFailure(this.message);
  final String message;
}

class ServerFailure extends AppFailure {
  const ServerFailure(super.message);
}

class ConnectionFailure extends AppFailure {
  const ConnectionFailure(super.message);
}
