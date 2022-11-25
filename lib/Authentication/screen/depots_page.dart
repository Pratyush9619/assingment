import 'package:assingment/Authentication/screen/overview_page.dart';
import 'package:assingment/style.dart';
import 'package:flutter/material.dart';

class DepotsPage extends StatefulWidget {
  const DepotsPage({super.key});

  @override
  State<DepotsPage> createState() => _DepotsPageState();
}

class _DepotsPageState extends State<DepotsPage> {
  List imglist = [
    'assets/bus.jpg',
    'assets/bus.jpg',
    'assets/bus.jpg',
    'assets/bus.jpg',
    'assets/bus.jpg',
    'assets/bus.jpg',
  ];
  List<String> citiesname = [
    'Shivaji Nagar',
    'Backbay',
    'Worli ',
    'Wadala',
    'Dahisar',
    'Deonar'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Depots'),
        backgroundColor: blue,
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(imglist.length, (index) {
            return cards(Image.asset(imglist[index]), citiesname[index], index);
          })),
    );
  }

  Widget cards(Image img, String title, int index) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: (() {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OverviewPage(),
                ));
          }),
          child: Container(
            child: Column(
              children: [
                Image.asset(
                  imglist[index],
                  fit: BoxFit.fill,
                ),
                Text(title),
              ],
            ),
          ),
        ));
  }

  void onToScreen(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DepotsPage(),
        ));
  }
}
