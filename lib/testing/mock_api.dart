import 'dart:convert';

import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;

class MockHttpClient extends Mock implements http.Client {}

class MockHttpResponse extends Mock implements http.Response {}

extension HttpMethodMocks on MockHttpClient {
  void mockGet({
    required Uri url,
    required Object object,
  }) {
    when(() => get(url)).thenAnswer((_) async {
      final response = MockHttpResponse();
      when(() => response.statusCode).thenReturn(200);
      when(() => response.body).thenReturn(jsonEncode(object));
      return response;
    });
  }

  void mockGetError({
    required Uri url,
    required int statusCode,
  }) {
    when(() => get(url)).thenAnswer((_) async {
      final response = MockHttpResponse();
      when(() => response.statusCode).thenReturn(statusCode);
      when(() => response.body).thenReturn(jsonEncode({'error': 'Not Found'}));
      return response;
    });
  }
}
