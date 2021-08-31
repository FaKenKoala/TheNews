import 'package:the_news/domain/service/i_app_service.dart';

class AppService extends IAppService{
  @override
  Future<AppExceptionEither<T>> execute<T>(covariant IAppMethod method) {
    // TODO: implement execute
    throw UnimplementedError();
  }

}