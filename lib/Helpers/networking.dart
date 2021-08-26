import 'package:dio/dio.dart';

import 'exceptions.dart';

///Has all networking URIs.
class NetworkConstants {
  static const String baseAPI = "base_url_here";
}

/// Handle Http Request
class NetworkHelper {
  static Dio get instanceDio {
    Dio dio = Dio();
    dio.interceptors.add(AppInterceptors());
    return dio;
  }

  static Future<Response> post(String path, {dynamic data, token}) async {
    return instanceDio.post(
      path,
      data: data,
    );
  }

  static Future<Response> get(String path,
      {dynamic queryParameters, token}) async {
    return instanceDio.get(path, queryParameters: queryParameters);
  }

  static Future<Response> delete(String path, {token}) {
    return instanceDio.delete(path);
  }

  static void _addToken({token}) {
    if (token != null) {
      instanceDio.options.headers = {"Authorization": "Bearer $token"};
    }
  }
}

///Validating network request and return `0` if successful, otherwise `throws` and exception.
int validateResponse(Response? response) {
  switch (response!.statusCode) {
    case 200:
      return 0;
    case 400:
      throw BadRequestException(response.data.toString());
    case 401:
    case 403:
      throw UnauthorisedException(response.data.toString());
    case 422:
      throw UnProcessableEntity(
          "email and password is required ", response.data);
    case 500:
    default:
      throw FetchDataException(
          'Error occured while Communication with Server with StatusCode : ${response.data}');
  }
}

/// APP Interceptor
/// This Interceptor handle error and response request for each dio request
class AppInterceptors extends Interceptor {
  @override
  void onResponse(Response response, handler) {
    // TODO: implement onResponse
    return super.onResponse(response, handler);
  }

  @override
  Future onRequest(RequestOptions options, handler) async {
    /// Token Here When use API
    // final String?  token = AuthRepo.getUserData()?.accessToken;

    options.baseUrl = NetworkConstants.baseAPI;

    /// Create Time out for sending
    options.sendTimeout = 120 * 1000;

    /// Create Time out for Connect
    options.connectTimeout = 120 * 1000;

    /// Redirects true
    options.followRedirects = true;

    /// Add Header Accepted
    options.headers.addAll({
      Headers.acceptHeader: "application/json",
      Headers.contentTypeHeader: "application/json",
    });

    // if(token!=null) {
    //   options.headers.addAll({
    //     "Authorization": "Bearer $token"
    //   });
    // }

    return super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, handler) {
    // TODO: implement onError
    return super.onError(err, handler);
  }
}
