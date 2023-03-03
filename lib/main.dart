import 'package:flutter/gestures.dart';
import 'package:ott_demo/provider/app_provider.dart';
import 'package:ott_demo/utils/exports/common_exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AppProvider())],
      child: MaterialApp(
        title: "OTT Demo",
        theme: AppTheme.theme,
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior(),
        navigatorKey: NavigationService.navigatorKey,
        // initialRoute: Routes.homeScreen,
        initialRoute: Routes.HomeScreentablet,

        onGenerateRoute: NavigationService().generateRoute,
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
