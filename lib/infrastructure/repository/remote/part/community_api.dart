import 'package:retrofit/retrofit.dart';

mixin CommunityApi {
  @GET('/community/v3/user-content/url.json')
  Future getComment({
    @Query('url')required  String url,

    /// must be a multiple of 25
    @Query('offset') int offset = 0,

    /// newest, oldest, reader
    @Query('sort') String sort = 'newest',
  });

  @GET('/community/v3/user-content/replies.json')
  Future getCommentReplay({
    @Query('url') required String url,
    @Query('commentSequence')required  int commentSequence,

    /// must be a multiple of 25
    @Query('offset') int offset = 0,
  });
}
