import 'package:bmr_calculator/men/imperial/imperial_input.dart';
import 'package:bmr_calculator/men/info.dart';
// import 'package:bmr_calculator/men/imperial_input.dart';
import 'package:bmr_calculator/men/metric/metric_input.dart';
import 'package:bmr_calculator/women/info_women.dart';
import 'package:bmr_calculator/women/metric/metric_input_women.dart';
// import 'package:bmr_calculator/men/metric_input.dart';
// import 'package:bmr_calculator/men/nested_tabbar.dart';
// import 'package:bmr_calculator/men/test_navigate.dart';
import 'package:flutter/material.dart';

class WomenInput extends StatefulWidget {
  @override
  _WomenInputState createState() => _WomenInputState();
}

class _WomenInputState extends State<WomenInput> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("Women's BMR "),
        ),
        bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.teal,
            indicatorColor: Colors.teal,
            unselectedLabelColor: Colors.black54,
            tabs: <Widget>[
              Tab(
                text: 'Metric',
              ),
              Tab(
                text: 'Imperial',
              ),
              Tab(
                text: 'Info',
                icon: Icon(Icons.info),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            BmrCalPageMetricWomen(),
            BmrCalPageImperial(),
            InfoPagewomen()
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
