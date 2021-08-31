import 'package:retrofit/retrofit.dart';

mixin ArchiveApi {
  /// The data maybe be large, it should be download before viewing data.
  @GET('/archive/v1/{year}/{month}.json')
  Future getArchive(
    @Path('year') int year,
    @Path('month') int month,
  );
}
