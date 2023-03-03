import 'package:ott_demo/utils/exports/common_exports.dart';

class ActorsTablet extends StatefulWidget {
  const ActorsTablet({super.key});

  @override
  State<ActorsTablet> createState() => _ActorsTabletState();
}

class _ActorsTabletState extends State<ActorsTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          right: 10.0,
          left: 10,
        ),
        child: ListView.builder(
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0, bottom: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 80,
                        width: 120,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_7-ypXAbxXhsohCIbd7h4IyxYkEf9L8NYCg&usqp=CAU"),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle),
                      ),
                    ),
                    const Text("Jordan Belfort")
                  ],
                ),
              );
            }),
      ),
    );
  }
}
