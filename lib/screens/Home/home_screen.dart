import 'package:ott_demo/screens/Movie/movie.dart';
import 'package:ott_demo/screens/Subscriptions/subscriptions.dart';
import 'package:ott_demo/screens/myFavShow/MyFavShow.dart';
import 'package:ott_demo/screens/Series/series.dart';
import 'package:ott_demo/utils/exports/common_exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    appProvider = context.read();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: appProvider.currentTab,
        builder: (context, value, child) {
          return Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(appProvider.tabs.length, (index) {
                        return ListTile(
                          leading: const Icon(Icons.movie_creation_outlined),
                          title: Text(appProvider.tabs[index]),
                          selected: appProvider.tabs[index] == value,
                          selectedTileColor: Colors.blueGrey,
                          selectedColor: Colors.white,
                          onTap: () {
                            appProvider.currentTab.value =
                                appProvider.tabs[index];
                          },
                        );
                      })
                    ],
                  )),
              Expanded(
                flex: 7,
                child: value == "Movie"
                    ? Movie()
                    : value == "Series"
                        ? const Series()
                        : value == "My Favourite Show"
                            ? const MyFavShow()
                            : value == "Subscriptions"
                                ? const Subscriptions()
                                : value == "Home"
                                    ? Container(
                                        color: Colors.orangeAccent,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              value,
                                            ),
                                          ],
                                        ),
                                      )
                                    : const SizedBox.shrink(),
              ),
            ],
          );
        },
      ),
    );
  }
}
