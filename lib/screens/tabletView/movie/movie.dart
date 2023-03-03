import 'package:ott_demo/screens/tabletView/movie/reccomendation_section/reccomendation/recommendation.dart';
import 'package:ott_demo/screens/tabletView/movie/sub_part_movie.dart/actors.dart';
import 'package:ott_demo/screens/tabletView/movie/sub_part_movie.dart/favourite_show.dart';
import 'package:ott_demo/screens/tabletView/movie/sub_part_movie.dart/mostly_watched.dart';
import 'package:ott_demo/screens/tabletView/movie/sub_part_movie.dart/recommendation.dart';
import 'package:ott_demo/utils/exports/common_exports.dart';

class MovieTabletMode extends StatefulWidget {
  const MovieTabletMode({super.key});

  @override
  State<MovieTabletMode> createState() => _MovieTabletModeState();
}

class _MovieTabletModeState extends State<MovieTabletMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Movie",
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              const Padding(
                padding: EdgeInsets.only(top: 10.0, left: 10),
                child: Text(
                  "Top Recommendation Playlist",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 5, top: 5),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const RecommendationTabletMode()));
                  },
                  child: const SizedBox(
                      height: 150, child: RecommendationTablet()),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5, left: 10),
                child: Text(
                  "Mostly watched",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(bottom: 0.0),
                  child: SizedBox(height: 350, child: MostlyWatched())),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Favourite Show",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                  height: 170.0,
                  child: Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: FavouriteShowTablet(),
                  )),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Best Actor's",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: SizedBox(
                    height: 120,
                    child: ActorsTablet(),
                  ))
            ])));
  }
}
