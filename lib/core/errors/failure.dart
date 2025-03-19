abstract class Failure {
  final String message;
  final String? key;
  final num? code;

  const Failure({required this.message, this.code, this.key});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message, super.code, super.key});
}

class ConnectionFailure extends Failure {
  const ConnectionFailure({required super.message, super.key});
}

class DatabaseFailure extends Failure {
  const DatabaseFailure({required super.message, super.key});
}

class ClientFailure extends Failure {
  const ClientFailure({required super.message, super.key});
}

class CaseFailure extends Failure {
  const CaseFailure({required super.message, super.key});
}

class NothingFailure extends Failure {
  const NothingFailure({super.message = 'Terjadi kesalahan yang tidak ketahui', super.key});
}
