import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class MostlyWatched extends StatelessWidget {
  const MostlyWatched({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveGridList(
        horizontalGridMargin: 10,
        verticalGridMargin: 10,
        minItemWidth: 80,
        maxItemsPerRow: 2,
        minItemsPerRow: 2,
        children: List.generate(
          10,
          (index) => GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                InkWell(
                  borderRadius: const BorderRadius.only(),
                  onTap: () {},
                  child: Container(
                    height: 110,
                    width: 200,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://marketplace.canva.com/EAFH3gODxw4/1/0/1131w/canva-black-%26-white-modern-mystery-forest-movie-poster-rLty9dwhGG4.jpg"),
                          fit: BoxFit.fill,
                        ),
                        border: Border.all(
                            color: const Color(0xFF000000),
                            width: 2.0,
                            style: BorderStyle.solid),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        shape: BoxShape.rectangle),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        children: const [Icon(Icons.favorite_border)],
                      ),
                      const SizedBox(
                        width: 115,
                      ),
                      Column(
                        children: const [
                          Text(
                            "Wood",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // ColoredBox(
          //   color: Colors.lightBlue,
          //   child: Padding(
          //     padding: const EdgeInsets.all(32),
          //     child: Text(
          //       '$index',
          //       textAlign: TextAlign.center,
          //       style: const TextStyle(color: Colors.white),
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
