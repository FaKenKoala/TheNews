import 'package:retrofit/retrofit.dart';

mixin NewswireApi {
  @GET('/news/v3/content.json')
  Future getNewswireContent([
    @Query('url') String url =
        'https%3A%2F%2Fwww.nytimes.com%2F2018%2F09%2F19%2Fworld%2Fasia%2Fnorth-south-korea-nuclear-weapons.html',
  ]);

  @GET('/news/v3/content/section-list.json')
  Future getNewswireSectionList();

  @GET('/news/v3/content/{source}/{section}.json')
  Future getNewswireSection({
    /// all, nyt, inyt
    @Path('source') required String source,
    /// field from above api get seciontList | all
    @Path('section') String section = 'all',
  });
}
