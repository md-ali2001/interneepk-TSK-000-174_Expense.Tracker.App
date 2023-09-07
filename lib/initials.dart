import 'package:expensetracker/expensedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

void main()
{
  runApp(const initial());

}

class initial extends StatelessWidget{

  const initial({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider(create: (context) =>expensedata(),
      builder: (context,child)=>const MaterialApp(
        home:HomeScreen(),
      ),

    );
  }
  

}


