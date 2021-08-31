import 'package:retrofit/retrofit.dart';

mixin SemanticApi {
  @GET('/semantic/v2/concept/search.json')
  Future searchSemantic({
    @Query('query')required String query,
    @Query('offse') int offset = 10,

    /// all, pages, ticker_symbol, links, taxonomy, combinations,
    /// geocodes, article_list, scope_notes, search_api_query
    @Query('fields')required  String fields,
  });

  @GET('/semantic/v2/convept/name/{concept-type}/{specific-concept}.json')
  Future searchSpecificSemantic({
    /// nytd_geo, nytd_per, nytd_org, nytd_des
    @Path('concept-type') required String conceptType,
    @Path('specific-concept')required  String specificType,

    /// all, pages, ticker_symbol, links, taxonomy, combinations,
    /// geocodes, article_list, scope_notes, search_api_query
    @Query('fields')required  String fields,
  });
}
