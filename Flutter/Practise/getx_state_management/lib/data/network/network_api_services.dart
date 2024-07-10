import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:getx_state_management/data/exceptions/app_exception.dart';
import 'package:getx_state_management/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future getApi(String url) async {
    dynamic jsonResponse;
    try {
      http.Response response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 30));
      jsonResponse = getResponse(response);
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw RequestTimeOutException();
    }
    return jsonResponse;
  }

  @override
  Future postApi(String url, var body) async {
    dynamic jsonResponse;

    try {
      http.Response response = await http
          .post(
            Uri.parse(url),
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode(body),
          )
          .timeout(const Duration(seconds: 30));
      jsonResponse = getResponse(response);
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw RequestTimeOutException();
    }
    return jsonResponse;
  }

  @override
  Future putApi(String url, body) async {
    dynamic jsonResponse;

    try {
      http.Response response = await http
          .put(
            Uri.parse(url),
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode(body),
          )
          .timeout(const Duration(seconds: 30));
      jsonResponse = getResponse(response);
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw RequestTimeOutException();
    }
    return jsonResponse;
  }

  dynamic getResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic jsonReponse = jsonDecode(response.body);
        return jsonReponse;
      case 400:
        throw InvalidUrlException();
      case 500:
        throw ServerException();
      default:
        throw FetchDataException();
    }
  }
}
