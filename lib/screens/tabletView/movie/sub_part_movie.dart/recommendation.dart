import 'package:ott_demo/utils/exports/common_exports.dart';

class RecommendationTablet extends StatefulWidget {
  const RecommendationTablet({super.key});

  @override
  State<RecommendationTablet> createState() => _RecommendationTabletState();
}

class _RecommendationTabletState extends State<RecommendationTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 50,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  InkWell(
                    child: Container(
                      height: 110,
                      width: 200,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1580130775562-0ef92da028de?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG1vdmllJTIwcG9zdGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                            fit: BoxFit.fill,
                          ),
                          border: Border.all(
                              color: const Color.fromARGB(255, 239, 235, 235),
                              width: 2.0,
                              style: BorderStyle.solid),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: const Color.fromARGB(
                          //             255, 145, 143, 143)
                          //         .withOpacity(0.2),
                          //     spreadRadius: 5,
                          //     blurRadius: 5,
                          //     offset: const Offset(0,
                          //         0), // changes x,y position of shadow
                          //   ),
                          // ],
                          shape: BoxShape.rectangle),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: const [Icon(Icons.favorite)],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Column(
                          children: const [Text("Washington D.C.")],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
