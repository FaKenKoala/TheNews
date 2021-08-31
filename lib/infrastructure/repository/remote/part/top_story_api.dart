import 'package:retrofit/retrofit.dart';

mixin TopStoryApi {
  @GET('/topstories/v2/{secion}.json')
  Future getTopStory(
    /// arts, automobiles, books, business, fashion, food,
    /// health, home, insider, magazine, movies, nyregion,
    /// obituaries, opinion, politics, realestate, science,
    /// sports, sundayreview, technology, theater, t-magazine,
    /// travel, upshot, us, world
    @Query('section') String section,
  );
}
