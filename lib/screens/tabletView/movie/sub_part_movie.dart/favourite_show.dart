import 'package:ott_demo/utils/exports/common_exports.dart';

class FavouriteShowTablet extends StatefulWidget {
  const FavouriteShowTablet({super.key});

  @override
  State<FavouriteShowTablet> createState() => _FavouriteShowTabletState();
}

class _FavouriteShowTabletState extends State<FavouriteShowTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: ListView.builder(
            itemCount: 50,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: Container(
                        height: 110,
                        width: 200,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1559583109-3e7968136c99?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fG1vdmllJTIwcG9zdGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(
                                color: const Color.fromARGB(255, 82, 80, 80),
                                width: 2.0,
                                style: BorderStyle.solid),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            shape: BoxShape.rectangle),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [Icon(Icons.favorite)],
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [Text("MOULIN ROUGE")],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
