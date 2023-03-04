class Failure {
  String message = '';
  Failure(
    this.message,
  );
}

class FirebaseFailure extends Failure {
  FirebaseFailure(
    String message,
  ) : super(message);
}

class CacheFailure extends Failure {
  CacheFailure(
    String message,
  ) : super(message);
}
