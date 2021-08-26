///Generic exception to catch and handle resulted error.
class AppException implements Exception {
  final message;
  final details;
  final data;

  const AppException([this.message, this.details, this.data]);

  @override
  String toString() => "message: $message -> Details: $details";
}

class FetchDataException extends AppException {
  const FetchDataException([String? details, data])
      : super("Error During Communication.", details, data);
}

class BadRequestException extends AppException {
  const BadRequestException([details]) : super("Invalid Request.", details);
}

class UnProcessableEntity extends AppException {
  const UnProcessableEntity(message,[Map<String,dynamic>? details]) : super(message, details);
}

class UnauthorisedException extends AppException {
  const UnauthorisedException([details]) : super("Unauthorised.", details);
}

class EmailNotFoundException extends AppException {
  const EmailNotFoundException([
    String? message,
  ]) : super(message ?? "The Email not found.");

  @override
  String toString() => 'EmailNotFoundException (message: $message)';
}

///Throw when the developer asks for [PreferenceUtils] method before initialized the [SharedPreferences] package instance.
class PreferenceUtilsNotInitializedException extends AppException {
  const PreferenceUtilsNotInitializedException({
    String? message,
  }) : super(message ??
            "Did you forget to call `PreferenceUtils.init()` in main?");
}

///Throw when you try to save unsupported DataType into [SharedPreferences]
class NotSupportedTypeToSaveException extends AppException {}
