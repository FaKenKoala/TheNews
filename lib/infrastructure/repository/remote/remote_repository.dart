import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:the_news/infrastructure/repository/remote/part/archive_api.dart';
import 'package:the_news/infrastructure/repository/remote/part/article_search_api.dart';
import 'package:the_news/infrastructure/repository/remote/part/books_api.dart';
import 'package:the_news/infrastructure/repository/remote/part/community_api.dart';
import 'package:the_news/infrastructure/repository/remote/part/most_popular_api.dart';
import 'package:the_news/infrastructure/repository/remote/part/movie_reviews_api.dart';
import 'package:the_news/infrastructure/repository/remote/part/newswire_api.dart';
import 'package:the_news/infrastructure/repository/remote/part/rss_feeds.dart';
import 'package:the_news/infrastructure/repository/remote/part/semantic_api.dart';
import 'package:the_news/infrastructure/repository/remote/part/times_tags_api.dart';
import 'package:the_news/infrastructure/repository/remote/part/top_story_api.dart';
part 'remote_repository.g.dart';

@RestApi()
@singleton
abstract class RemoteRepository
    with
        ArchiveApi,
        ArticleSerachApi,
        BooksApi,
        CommunityApi,
        MostPopuarApi,
        MovieReviewsApi,
        NewswireApi,
        RSSAPi,
        SemanticApi,
        TimesTagsApi,
        TopStoryApi {
  @factoryMethod
  factory RemoteRepository(Dio dio, {String? baseUrl}) = _RemoteRepository;
}
