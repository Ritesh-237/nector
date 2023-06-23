import 'package:flutter/material.dart';
import 'package:nector/screenUI/about_explorer.dart';
import 'package:nector/screenUI/accountcart.dart';
import 'package:nector/screenUI/cart.dart';
import 'package:nector/screenUI/delivery_address.dart';
import 'package:nector/screenUI/explore_page.dart';
import 'package:nector/screenUI/favourite.dart';
import 'package:nector/screenUI/fruitsapicall.dart';
import 'package:nector/screenUI/help_explorer.dart';
import 'package:nector/screenUI/loginpage.dart';
import 'package:nector/screenUI/mainpage.dart';
import 'package:nector/screenUI/mobile_login.dart';
import 'package:nector/screenUI/my_detail_page.dart';
import 'package:nector/screenUI/navigator.dart';
import 'package:nector/screenUI/orders_explorer.dart';
import 'package:nector/screenUI/place_order.dart';
import 'package:nector/screenUI/search_result.dart';
import 'package:nector/screenUI/splash.dart';
import 'package:nector/screenUI/track_order.dart';
import 'package:nector/screenUI/welcome.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> getRoutes() => {
        MainPage.routeName: (context) => const MainPage(),
        FavouriteCart.routeName: (context) => const FavouriteCart(),
        About.routeName: (context) => const About(),
        Accountcart.routeName: (context) => const Accountcart(),
        Cart.routeName: (context) => const Cart(),
        DeliveryAddress.routename: (context) => const DeliveryAddress(),
        ExplorePage.routeName: (context) => const ExplorePage(),
        FruitApi.routeName: (context) => const FruitApi(),
        Help.routeName: (context) => const Help(),
        LogInPage.routeName: (context) => const LogInPage(),
        MobileLogIn.routeName: (context) {
          return const MobileLogIn();
        },
        MyDetail.routeName: (context) {
          return const MyDetail();
        },
        RootNavigator.routeName: (context) {
          return const RootNavigator();
        },
        Orders.routeName: (context) {
          return const Orders();
        },
        Placeorder.routeName: (context) {
          return const Placeorder();
        },
        SearchResult.routeName: (context) {
          return const SearchResult(searchText: "");
        },
        Splash.routeName: (context) {
          return const Splash();
        },
        TrackOrder.routeName: (context) {
          return const TrackOrder();
        },
        Welcome.routeName: (context) {
          return const Welcome();
        }
      };
}
