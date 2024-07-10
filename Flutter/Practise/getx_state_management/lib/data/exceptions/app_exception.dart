class AppException implements Exception {
  String message = '';

  AppException(this.message);

  @override
  String toString() {
    return "AppException : $message";
  }
}

class NoInternetException extends AppException {
  NoInternetException() : super("No Internet Connection");
}

class RequestTimeOutException extends AppException {
  RequestTimeOutException() : super("Request Time Out");
}

class ServerException extends AppException {
  ServerException() : super("Internal Server Error");
}

class InvalidUrlException extends AppException {
  InvalidUrlException() : super("Invalid Url Exception");
}

class FetchDataException extends AppException {
  FetchDataException() : super("Unable To Fetch Data");
}
