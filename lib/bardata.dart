import 'package:expensetracker/singlebar.dart';

class bardata {
  final double mon;
  final double tue;
  final double wed;
  final double thu;
  final double fri;
  final double sat;
  final double sun;

  List<singlebar> bardata1 = [];

  bardata(
      {required this.mon, required this.tue, required this.wed, required this.thu,
        required this.fri, required this.sat, required this.sun

      });

  void initializebardata()
  {
    bardata1=[
      
      singlebar(x: 1, y: mon),
      singlebar(x: 2, y: tue),
      singlebar(x: 3, y: wed),
      singlebar(x: 4, y: thu),
      singlebar(x: 5, y: fri),
      singlebar(x: 6, y: sat),
      singlebar(x: 7, y: sun)



      
    ];
  }

}