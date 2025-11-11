import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:injectable/injectable.dart';

import '../environment/env.dart';

@singleton
class HttpService {
  final Dio _client;

  HttpService({
    required Dio client,
  }) :
    _client = client {
      _client
        ..options.baseUrl = Env.apiUrl
        ..options.connectTimeout = const Duration(milliseconds: 15000)
        ..options.receiveTimeout = const Duration(milliseconds: 15000);

      _client.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) async {
          final timezone = await FlutterTimezone.getLocalTimezone();
          options.queryParameters['timezone'] = timezone.identifier;
          return handler.next(options);
        },
      ));
  }

  Future<Response> get(String path, { Map<String, dynamic>? queryParameters, Options? options }) async {
    try{
      final Response response = await _client.get(path, queryParameters: queryParameters, options: options);
      return response;
    }catch(e){
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<Response> post(String path, { Object? data, Map<String, dynamic>? queryParameters, Options? options }) async {
    try{
      final Response response = await _client.post(path, data: data, queryParameters: queryParameters, options: options);
      return response;
    }catch(e){
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<Response> put(String path, { Object? data, Map<String, dynamic>? queryParameters, Options? options }) async {
    try{
      final Response response = await _client.put(path, data: data, queryParameters: queryParameters, options: options);
      return response;
    }catch(e){
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<void> delete(String path, { Map<String, dynamic>? queryParameters }) async {
    try{
      await _client.delete(path, queryParameters: queryParameters);
    }catch(e){
      debugPrint(e.toString());
      rethrow;
    }
  }
}
