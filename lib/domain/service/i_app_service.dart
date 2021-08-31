import 'package:dartz/dartz.dart';
import 'package:the_news/domain/model/exception/app_exception.dart';

typedef AppExceptionEither<T> = Either<AppException, T>;

abstract class IAppMethod { }

abstract class IAppService {
  Future<AppExceptionEither<T>> execute<T>(covariant IAppMethod method);
}
