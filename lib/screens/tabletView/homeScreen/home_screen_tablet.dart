import 'package:flutter/material.dart';
import 'package:ott_demo/screens/tabletView/movie/movie.dart';

class HomeScreentablet extends StatefulWidget {
  const HomeScreentablet({super.key});

  @override
  State<HomeScreentablet> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreentablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "OTT Plateform",
            style: TextStyle(color: Colors.black, fontSize: 20),
          )),
      body: const Center(
        child: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text(
                'OTT PLATEFORM',
                style: TextStyle(),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Movie'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MovieTabletMode()));
              },
            ),
            ListTile(
              title: const Text('web Series'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
