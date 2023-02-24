import 'package:ott_demo/utils/exports/common_exports.dart';

class AppProvider extends ChangeNotifier {
  final List<String> tabs = [
    "Home",
    "Movie",
    "Series",
    "My Favourite Show",
    "Subscriptions",
  ];
  ValueNotifier<String> currentTab = ValueNotifier("Home");
}
