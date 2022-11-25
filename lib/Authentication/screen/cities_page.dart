import 'package:assingment/Authentication/screen/depots_page.dart';
import 'package:assingment/style.dart';
import 'package:flutter/material.dart';

class CitiesPage extends StatefulWidget {
  const CitiesPage({super.key});

  @override
  State<CitiesPage> createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {
  List<String> citiesname = [
    'Mumbai',
    'Delhi',
    'Bangluru',
    'Ahmedabad',
    'kolkata',
    'Jammu & Shrinagar',
    'Lucknow',
    'Patna',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cities'),
        backgroundColor: blue,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        // childAspectRatio: 0.89,
        // crossAxisSpacing: 7,
        // mainAxisSpacing: 7,
        children: List.generate(citiesname.length, (index) {
          return Cards(citiesname[index], index);
        }),
      ),
    );
  }

  Widget Cards(String title, int index) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              //   minimumSize: MediaQuery.of(context).size,
              backgroundColor: blue,
            ),
            onPressed: () {
              onToScreen(index);
            },
            child: Text(title)));
  }

  void onToScreen(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DepotsPage(),
        ));
  }
}
