import 'package:flutter/material.dart';
import 'package:foodio/screens/card_screen/card_page.dart';
import 'package:foodio/screens/home_screen/home_page.dart';
import 'package:foodio/screens/orders_screen/orders_page.dart';
import 'package:foodio/screens/resturant_screen/Cuisines_page.dart';
import 'package:foodio/screens/search_screen/search_page.dart';
import 'package:foodio/screens/wallet_screen/wallet_page.dart';
import 'package:foodio/screens/profile_screen/profile_page.dart';

import '../../screens/authentication_sreen/login_page.dart';
import '../../screens/authentication_sreen/onboarding_page.dart';
import '../../screens/authentication_sreen/singup_page.dart';
import '../../screens/favoirite_screen/favorite_page.dart';
import '../../screens/hotels_on_google_map/hotels_on_google_map_page.dart';
import '../../screens/resturant_screen/category_restuarants_page.dart';
import '../../screens/resturant_screen/resturant_page.dart';

class Routes {
  static const String home = HomePage.routeName;
  static const String card = OrdersPage.routeName;
  static const String order = CardPage.routeName;
  static const String cuisines = CuisinesPage.routeName;
  static const String wallet = WalletPage.routeName;
  static const String profile = ProfilePage.routeName;
  static const String favorite = FavoritePage.routeName;
  static const String search = SearchPage.routeName;
  ///
}

class AppRoutes {
  static const initScreen = '/';
  static const homeScreen = 'home_screen';
  static const orderScreen = 'order_screen';
  static const cardScreen = 'card_screen';
  static const cuisinesScreen = 'cuisines_screen';
  static const onBoardingScreen = 'on_boarding_screen';
  static const loginScreen = 'login_screen';
  static const registerScreen = 'register_screen';
  static const walletScreen = 'wallet_screen';
  static const profileScreen = 'profile_screen';
  static const favoriteScreen = 'favorite_screen';
  static const searchScreen = 'search_screen';
  static const hotels_on_map_screen = 'hotels_on_map_screen';
  static const category_restaurants_screen = 'category_restaurants_screen';
  static const resturantScreen = 'resturant_screen';

}
class AppRouter {
  static Route? generateRoutes(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        switch (settings.name) {
          case AppRoutes.homeScreen:
            return HomePage();
          case AppRoutes.orderScreen:
            return const OrdersPage();
          case AppRoutes.cardScreen:
            return const CardPage();
          case AppRoutes.cuisinesScreen:
            return const CuisinesPage();
          case AppRoutes.walletScreen:
            return const WalletPage();
          case AppRoutes.profileScreen:
            return const ProfilePage();
          case AppRoutes.favoriteScreen:
            return const FavoritePage();
          case AppRoutes.searchScreen:
            return const SearchPage();
          case AppRoutes.resturantScreen:
            return const ResturantPage();
          case AppRoutes.hotels_on_map_screen:
            return const HotelsOnMapPage();
          case AppRoutes.category_restaurants_screen:
            return const CategoryRestaurantsPage();
          case AppRoutes.loginScreen:
            return LoginView();
          case AppRoutes.registerScreen:
            return SignupPage();
          case AppRoutes.initScreen:
          default:
            return const OnBoarding();
        }
      },
    );
  }
}