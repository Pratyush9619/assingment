import 'dart:io';

import 'package:assingment/Authentication/login_register.dart';
import 'package:assingment/Authentication/screen/cities_page.dart';
import 'package:assingment/style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int crossAxisCount = 2;
  List imglist = [
    'assets/home/Picture1.png',
    'assets/home/Picture2.png',
    'assets/home/Picture3.png',
    'assets/home/Picture4.png',
    'assets/home/Picture5.png',
    'assets/home/Picture1.png',
    'assets/home/Picture2.png',
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Home Page'),
          backgroundColor: blue,
        ),
        body: WillPopScope(
          onWillPop: (() {
            return onWillPop(context);
          }),
          child: Stack(
            children: [
              GridView.count(
                crossAxisCount: crossAxisCount,
                childAspectRatio: 0.89,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: List.generate(imglist.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SizedBox(
                      height: 140,
                      width: 140,
                      child: Image.asset(
                        imglist[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
              ),
              Positioned(
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      height: 48,
                      width: 340,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            // minimumSize: MediaQuery.of(context).size,
                            backgroundColor: blue,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CitiesPage(),
                                ));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Procceed',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: almostWhite,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(
                                width: 20,
                              ),
                              const Icon(
                                Icons.forward,
                                size: 35,
                              )
                            ],
                          )),
                    ),
                  ))
            ],
          ),
        ));
  }

  Future<bool> onWillPop(BuildContext context) async {
    bool a = false;
    await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
              content: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Close TATA POWER?",
                      style: subtitle1White,
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              //color: blue,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            //color: blue,
                            child: Center(
                                child: Text(
                              "No",
                              style: button.copyWith(color: blue),
                            )),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            a = true;
                            exit(0);
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: blue,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            //color: blue,
                            child: Center(
                                child: Text(
                              "Yes",
                              style: button,
                            )),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ));
    return a;
  }

  // Widget Cards(Image img, int index) {
  //   return Padding(
  //     padding: const EdgeInsets.all(10.0),
  //     child: Container(
  //       child: Image.asset(
  //         img[index],
  //         height: 70,
  //         width: 70,
  //       ),
  //     ),
  //   );
  // }
}
