import 'package:retrofit/retrofit.dart';

mixin RSSAPi {
  @GET('/xml/rss/nyt/{section}.xml')

  /// Africa, Americas, ArtandDesign, Arts, AsiaPacific,
  /// Automobile, Baseball, Books, Business, Climate,
  /// CollegeBasketball, CollegeFootball, Dance, Dealbook,
  /// DiningandWine, Economy, Education, EnergyEnvironment,
  /// Europe, FashionandStyle, Golf, Health, Hockey, HomePage,
  /// Jobs, Lens, MediaandAdvertising, MiddleEast, MostEmailed,
  /// MostShared, MostViewed, Movies, Music, NYRegion,
  /// Obituaries, PersonalTech, Politics, ProBasketball,
  /// ProFootball, RealEstate, Science, SmallBusiness, Soccer,
  /// Space, Sports, SundayBookReview, Sunday-Review,
  /// Technology, Television, Tennis, Theater, TMagazine,
  /// Travel, Upshot, US, Weddings, Well, YourMoney
  Future getRSSData([@Path('value') String section = 'HomePage']);
}
