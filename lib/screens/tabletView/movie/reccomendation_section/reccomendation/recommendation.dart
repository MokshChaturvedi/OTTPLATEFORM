import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ott_demo/screens/Movie/recommendation/dialogBox.dart';
import 'package:ott_demo/screens/Movie/recommendation/videoPlayer.dart';
import 'package:ott_demo/screens/Movie/recommendation/watchOnline.dart';
import 'package:ott_demo/screens/tabletView/movie/reccomendation_section/watch_online.dart';

class RecommendationTabletMode extends StatefulWidget {
  const RecommendationTabletMode({super.key});

  @override
  State<RecommendationTabletMode> createState() =>
      _RecommendationTabletModeState();
}

class _RecommendationTabletModeState extends State<RecommendationTabletMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[200],
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Stranger Things",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: false,
      ),
      // backgroundColor: const Color.fromARGB(0, 4, 25, 51),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(1), BlendMode.dstATop),
                          image: const NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTftY43UyBMJpdYkhh4dCaxmLDqTb25v41I1g&usqp=CAU",
                          )),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: const [
                                Text(
                                  "OTT Original",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontFamily: "cursive"),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: const [
                                Text(
                                  "STRANGERS THINGS",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Row(
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      "95% Match",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 17),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      "2017",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      "2 Seasons",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(4.0),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white)),
                                      child: const Text(
                                        "4K Ultra HD",
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(4.0),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white)),
                                      child: const Text(
                                        "5.1",
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 20),
                            child: Row(
                              children: const [
                                Text(
                                  "When a young boy vansishes, a small town uncovers \na mystery involving secret experiments , terrifying \nsupernatural forces and one strange little girl.",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 20),
                            child: Row(
                              children: const [
                                Text(
                                  "Wivona Ryder , David Harbour, Metthew Modine",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 5),
                            child: Row(
                              children: const [
                                Text(
                                  "TV Shows, TV Sci-Fi & Fantasy, Teen TV Shows",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    ElevatedButton(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const WatchOnlineTablet()));
                                        },
                                        child: const Text('Watch Online',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                wordSpacing: 2.0)),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.green,
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontStyle: FontStyle.normal),
                                      ),
                                      onPressed: () {},
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    // ElevatedButton(
                                    GestureDetector(
                                        onTap: () {},
                                        child: TextButton(
                                          onPressed: () => showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                              title: const Text(
                                                  'Watch here trailer'),
                                              content: const SizedBox(
                                                  height: 200,
                                                  width: 600,
                                                  child: TrailerVideo()),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, 'Cancel'),
                                                  child: const Text('Cancel'),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, 'OK'),
                                                  child: const Text('OK'),
                                                ),
                                              ],
                                            ),
                                          ),
                                          child: const Text(
                                            'Watch Trailers',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                color: Colors.white,
                                                wordSpacing: 2.0),
                                          ),
                                        )),
                                    // style: ElevatedButton.styleFrom(
                                    //   primary: Colors.blue,
                                    //   textStyle: const TextStyle(
                                    //       color: Colors.white,
                                    //       fontSize: 0,
                                    //       fontStyle: FontStyle.normal),
                                    // ),
                                    // onPressed: () {},
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 8),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Popular In Our OTT Plateform",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 110,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(1), BlendMode.dstATop),
                            image: const NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL8EYmyUxMaTyGvkgUIg9ygsM6CD6A7QaxLtzD4k5kNhhUc1egbshslkm2VcEnX8CJO2Y&usqp=CAU",
                            )),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 230.0, top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 0.0),
                              child: Row(
                                children: const [
                                  Text(
                                    "OTT Original",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Recently Watched",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          InkWell(
                            child: Container(
                              height: 130,
                              width: 200,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1580130775562-0ef92da028de?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG1vdmllJTIwcG9zdGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                                    fit: BoxFit.fill,
                                  ),
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 239, 235, 235),
                                      width: 2.0,
                                      style: BorderStyle.solid),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color.fromARGB(
                                              255, 145, 143, 143)
                                          .withOpacity(0.2),
                                      spreadRadius: 5,
                                      blurRadius: 5,
                                      offset: const Offset(0,
                                          0), // changes x,y position of shadow
                                    ),
                                  ],
                                  shape: BoxShape.rectangle),
                            ),
                          ),
                        ],
                      ));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Favourite Show",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          InkWell(
                            child: Container(
                              height: 110,
                              width: 200,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCcvszPYza_TbayPTNOPcMJziXjKhamI9BPA&usqp=CAU"),
                                    fit: BoxFit.fill,
                                  ),
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 239, 235, 235),
                                      width: 2.0,
                                      style: BorderStyle.solid),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color.fromARGB(
                                              255, 145, 143, 143)
                                          .withOpacity(0.2),
                                      spreadRadius: 5,
                                      blurRadius: 5,
                                      offset: const Offset(0,
                                          0), // changes x,y position of shadow
                                    ),
                                  ],
                                  shape: BoxShape.rectangle),
                            ),
                          ),
                        ],
                      ));
                },
              ),
            ),
// for video player
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          InkWell(
                            child: Container(
                              height: 110,
                              width: 200,
                              decoration: BoxDecoration(
                                  // image: const DecorationImage(
                                  //   image: NetworkImage(
                                  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCcvszPYza_TbayPTNOPcMJziXjKhamI9BPA&usqp=CAU"),
                                  //   fit: BoxFit.fill,
                                  // ),
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 239, 235, 235),
                                      width: 2.0,
                                      style: BorderStyle.solid),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color.fromARGB(
                                              255, 145, 143, 143)
                                          .withOpacity(0.2),
                                      spreadRadius: 5,
                                      blurRadius: 5,
                                      offset: const Offset(0,
                                          0), // changes x,y position of shadow
                                    ),
                                  ],
                                  shape: BoxShape.rectangle),
                              child: VideoDemo(),
                            ),
                          ),
                        ],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
