import 'package:festival_app/headers.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();

  String splashScreens = '/';
  String homePage = 'home_page';
  String listPage = 'list_page';
  String detailPage = 'detail_page';

  static Map<String, WidgetBuilder> routes = {
    "/": (context) => const SplashScreen(),
    "home_page": (context) => const HomePage(),
    "list_page": (context) => const ListPage(),
    'detail_page': (context) => const DetailPage(),
  };
}
