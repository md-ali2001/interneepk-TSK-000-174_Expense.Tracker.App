import 'package:expensetracker/bardata.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class bargraph extends StatelessWidget{
  final double mon;
  final double tue;
  final double wed;
  final double thu;
  final double fri;
  final double sat;
  final double sun;


  const bargraph({super.key, required this.mon, required this.tue, required this.wed, required this.thu, required this.fri, required this.sat, required this.sun});

  @override
  Widget build(BuildContext context) {
    bardata mydata=bardata(mon: mon, tue: tue, wed: wed, thu: thu, fri: fri, sat: sat, sun:sun

    );
    mydata.initializebardata();


   return BarChart(BarChartData(
     maxY: 100,
     minY:0,

     barGroups: mydata.bardata1.map(
         (data)=>BarChartGroupData(
           x:data.x,
           barRods: [
             BarChartRodData(toY: data.y)
           ],
         ),
     ).toList(),
   ));
  }

}