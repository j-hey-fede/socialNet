class HttpException implements Exception {
  // exception is an abstract class that is intended to convey information to
  // the user about a failure so that the error can be addressed.
  final String message;

  HttpException(this.message);

  @override
  String toString() {
    return message;
    //return super.toString(); // instance of HttpException
  }
}
