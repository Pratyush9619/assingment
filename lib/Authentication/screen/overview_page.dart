import 'package:assingment/overview/project_planning.dart';
import 'package:assingment/style.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  List<String> desription = [
    'Overview of Project Progress Status of Shivaji Nagar EV Bus Charging Infra',
    'Project Planning & Scheduling Bus Depot Wise [Gant Chart] ',
    'Resource Allocation Planning',
    'Monthly Project Monitoring & Review',
    'Submission of Daily Progress Report for Individual Project',
    'Tracking of Individual Project Progress (SI No 2 & 6 S1 No.link)',
    'Online JMR verification for projects',
    'Safety check list & observation',
    'FQP Checklist for Civil & Electrical work',
    'Testing & Commissioning Reports of Equipment',
    'Easy monitoring of O & M schedule for all the equipment of depots.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overview Page'),
        backgroundColor: blue,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return cards(desription[index]);
        }),
      ),
    );
  }

  Widget cards(String desc) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: GestureDetector(
        onTap: (() {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlanningPage(),
              ));
        }),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: blue)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.access_alarm),
              const SizedBox(height: 10),
              Text(
                desc,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
