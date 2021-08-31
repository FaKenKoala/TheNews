import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:the_news/infrastructure/util/constants.dart';

@module
abstract class DioModule {
  @singleton
  Dio get dio {
    BaseOptions options = BaseOptions(
      baseUrl: Constants.BASE_URL,
      queryParameters: {
        'api-key': Constants.API_KEY,
      },
      connectTimeout: 6000,
      sendTimeout: 6000,
      receiveTimeout: 6000,
    );
    Dio dio = Dio(options);
    return dio;
  }
}
