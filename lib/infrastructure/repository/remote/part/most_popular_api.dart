import 'package:retrofit/retrofit.dart';

mixin MostPopuarApi {
  @GET('/mostpopular/v2/emailed/{period}.json')
  Future getMostEmailedArticle([
    /// 1, 7, 30
    @Path('period') int period = 1,
  ]);

  @GET('/mostpopular/v2/viewed/{period}.json')
  Future getMostViewedArticle([
    /// 1, 7, 30
    @Path('period') int period = 1,
  ]);

  @GET('/mostpopular/v2/shared/{period}.json')
  Future getMostSharedArticle([
    /// 1, 7, 30
    @Path('period') int period = 1,
  ]);

  @GET('/mostpopular/v2/shared/{period}/{share_type}.json')
  Future getMostSharedByTypeArticle([
    /// 1, 7, 30
    @Path('period') int period = 1,
    @Path('share_type') String shareType = 'facebook',
  ]);
}
