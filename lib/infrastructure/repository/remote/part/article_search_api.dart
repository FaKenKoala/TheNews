import 'package:retrofit/retrofit.dart';

mixin ArticleSerachApi {
  @GET('/search/v2/articlesearch.json')
  Future searchArticle({
    /// ^\d{8}$ , eg: 20210101
    @Query('begin_date') String? beginDate,
    @Query('end_data') String? endData,

    /// false or true
    @Query('facet') String facet = 'true',

    /// day_of_week, document_type, ingredients, news_desk, pub_month, pub_year,
    /// section_name, source, subsection_name, type_of_material
    @Query('facet_fields') String? facetFields,

    /// false or true
    @Query('facet_filter') String facetFilter = 'true',
    @Query('fl') String? fl,
    @Query('fq') String? fq,
    @Query('page') int page = 0,
    @Query('q') required String query,

    /// newest, oldest, relevance
    @Query('sort') String sortOrder = 'newest',
  });
}
