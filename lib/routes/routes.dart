import 'package:get/get.dart';

import '../components/buying_section/all_items.dart';
import '../components/buying_section/item_by_id.dart';
import '../screens/home_screen.dart';
import '../screens/start_sceen.dart';

class AppRoutes {
  static const String startScreen = '/';
  static const String homeScreen = '/home';
  static const String buyingSection = '/buying_section';
  static const String itemDetails = '/item_details';

  static final routes = [
    GetPage(name: startScreen, page: () => StartScreen()),
    GetPage(name: homeScreen, page: () => HomePage()),
    GetPage(name: buyingSection, page: () => BuyingSection()),
    GetPage(
        name: itemDetails,
        page: () => const ItemDetails(
              description: '',
              itemName: '',
              price: 0,
            )),
  ];
}
