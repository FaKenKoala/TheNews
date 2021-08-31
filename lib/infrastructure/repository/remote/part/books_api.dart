import 'package:get_it/get_it.dart';
import 'package:retrofit/retrofit.dart';

mixin BooksApi {
  /// get best sellers list
  /// /// The date the best sellers list was published on NYTimes.com.
  ///  Use "current" to get latest list.
  @GET('/books/v3/lists.json')
  Future getBooks({
    /// from getList api result

    @Query('list') required String bookList,

    /// ^\d{4}-\d{2}-\d{2}$, eg: 2021-09-01
    @Query('bestsellers-date') String? bestSellersData,
    @Query('published-date') String? publishedDate,

    /// must be a multiple of 20
    @Query('offset') int offset = 0,
  });

  @GET('/books/v3/lists/{date}/{list}.json')
  Future getBooksByDate({
    /// ^(\d{4}-\d{2}-\d{2}|current)$
    /// YYYY-MM-DD or "current"
    @Path('date') String date = 'current',
    @Path('list') required String bookList,

    /// must be a multiple of 20
    @Query('offset') int offset = 0,
  });

  @GET('/books/v3/lists/best-sellers/history.json')
  Future getHistoryBooks({
    @Query('age_group') String? ageGroup,
    @Query('author') String? author,
    @Query('contributor') String? contributor,
    @Query('isbn') String? isbn,
    @Query('offset') int offset = 0,
    @Query('price') String? price,
    @Query('publisher') String? publisher,
    @Query('title') String? title,
  });

  /// results for fields select
  @GET('/books/v3/lists/names.json')
  Future getBookListNames();

  @GET('/books/v3/lists/overview.json')
  Future getBookOverview(
    @Query('published_date') String? fromDate,
  );

  /// at least one query set
  @GET('/books/v3/reviews.json')
  Future getBookReview({
    @Query('isbn') String? isbn,
    @Query('title') String? title,
    @Query('author') String? author,
  });

}
