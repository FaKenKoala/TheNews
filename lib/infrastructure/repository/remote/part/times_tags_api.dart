import 'package:retrofit/retrofit.dart';

mixin TimesTagsApi {
  @GET('/suggest/v1/timestags/timestags')
  Future getTimesTags({
    @Query('query')required  String query,

    /// Des, Geo, Org, Per(one or more)
    @Query('filter')required String filter,
    @Query('max') int max = 10,
  });
}
