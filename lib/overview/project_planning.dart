import 'package:assingment/KeysEvents/openpdf.dart';
import 'package:assingment/KeysEvents/site_surveys.dart';
import 'package:assingment/style.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PlanningPage extends StatefulWidget {
  const PlanningPage({super.key});

  @override
  State<PlanningPage> createState() => _PlanningPageState();
}

class _PlanningPageState extends State<PlanningPage> {
  List<String> pointname = [
    'A1',
    'A2',
    'A3',
    'A4',
    'A5',
    'A6',
    'A8',
    'A9',
    'A10'
  ];

  List<String> titlename = [
    'Letter Of Award Received From TML.',
    'Site Survey, Job Scope Finalization & Proposed Layout Submission',
    'Detailed Engineering For Approval Of Civil & Electrical Layout, GA Drawing From TML.',
    'Site Mobilization Activity Completed.',
    'Approval Of Statutory Clearances Of BUS Depot.',
    'Procurement Of Order Finalization Completed.',
    'Receipt Of All Materials At Site',
    'Civil Infra Development Completed At Bus Depot.',
    'Electrical Infra Development Completed At Bus Depot',
    'Bus Depot Work Completed & Handover To TML'
  ];

  List<Widget> menuWidget = [
    const OpenPdf(),
    SiteSurveys(
        title:
            'Site Survey, Job Scope Finalization & Proposed Layout Submission'),
    SiteSurveys(
        title:
            'Detailed Engineering For Approval Of Civil & Electrical Layout, GA Drawing From TML.'),
    SiteSurveys(title: 'Site Mobilization Activity Completed.'),
    SiteSurveys(title: 'Approval Of Statutory Clearances Of BUS Depot.'),
    SiteSurveys(title: 'Procurement Of Order Finalization Completed.'),
    SiteSurveys(title: 'Receipt Of All Materials At Site'),
    SiteSurveys(title: 'Civil Infra Development Completed At Bus Depot.'),
    SiteSurveys(title: 'Electrical Infra Development Completed At Bus Depot'),
    SiteSurveys(title: 'Bus Depot Work Completed & Handover To TML'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Keys Events'),
          backgroundColor: blue,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(pointname.length, (index) {
            return cards(pointname[index], titlename[index], index);
          }),
        )

        // ListView.builder(
        //   itemCount: pointname.length,
        //   itemBuilder: (context, index) {
        //     return cards(pointname[index], titlename[index], index);
        //   },
        // )
        );
  }

  Widget cards(String point, String title, int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: (() {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => menuWidget[index],
              ));
        }),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: blue)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(point),
              SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
