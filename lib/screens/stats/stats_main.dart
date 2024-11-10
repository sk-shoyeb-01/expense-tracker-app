import 'package:expensetracker/screens/stats/chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsMain extends StatelessWidget {
  const StatsMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const Text(
            "Trasactions Stats",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 4,
                      color: Colors.grey.shade400,
                      offset: const Offset(4, 4))
                ]),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: MyChart(),
            ),
          )
        ],
      ),
    ));
  }
}
