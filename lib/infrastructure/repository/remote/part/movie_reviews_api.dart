import 'package:retrofit/retrofit.dart';

mixin MovieReviewsApi {
  @GET('/movies/v2/critics/{reviewer}.json')
  Future getMovieCritics({
    /// Reviewer name or "all" for all reviewers,
    /// "full-time" for full-time reviewers, or "part-time" for part-time reviewers.
    @Path('reviewer') required String reviewer,
  });

  @GET('/movies/v2/reviews/search.json')
  Future searchMovieReview({
    /// '' or Y
    @Query('critics-pick') String criticsPick = '',

    /// must be a multiple of 20
    @Query('offset') int result = 0,

    /// Start and end dates separated by colon
    /// (e.g. 1930-01-01:1940-01-01).
    @Query('opening-date') String? openingDate,

    /// by-opening-date, by-publication-date
    @Query('order') String? order,
    @Query('publication-date') String? publicationDate,
    @Query('reviewer') String? reviewer,
    @Query('query') required String query,
  });

  @GET('/movies/v2/reviews/{type}.json')
  Future getMovieReviews({
    /// all, picks
    @Path('type') required String type,

    /// Needs to be multiple of 20.
    @Query('offset') int offset = 0,

    /// by-opening-date, by-publication-date
    @Query('order') required String order,
  });
}
