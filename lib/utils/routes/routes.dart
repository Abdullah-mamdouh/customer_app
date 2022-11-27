import 'package:foodio/screens/card_screen/card_page.dart';
import 'package:foodio/screens/home_screen/home_page.dart';
import 'package:foodio/screens/orders_screen/orders_page.dart';
import 'package:foodio/screens/resturant_screen/Cuisines_page.dart';
import 'package:foodio/screens/search_screen/search_page.dart';
import 'package:foodio/screens/wallet_screen/wallet_page.dart';
import 'package:foodio/screens/profile_screen/profile_page.dart';

import '../../screens/favoirite_screen/favorite_page.dart';

class Routes {
  static const String home = HomePage.routeName;
  static const String card = OrdersPage.routeName;
  static const String order = CardPage.routeName;
  static const String cuisines = CuisinesPage.routeName;
  static const String wallet = WalletPage.routeName;
  static const String profile = ProfilePage.routeName;
  static const String favorite = FavoritePage.routeName;
  static const String search = SearchPage.routeName;
}