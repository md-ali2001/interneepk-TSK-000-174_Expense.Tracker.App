import 'package:expensetracker/bargraph.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'expensedata.dart';

class expensesummary extends StatelessWidget{

  const expensesummary({
    super.key
});
  @override
  Widget build(BuildContext context) {
   return Consumer<expensedata>(

     builder: (context,value,child)=>SizedBox(
       height:200,
       child:bargraph(
         maxY:100,

           mon: value.dailytotalexpense()[1]??0, tue: value.dailytotalexpense()[2]??0,
           wed: value.dailytotalexpense()[3]??0,
           thu: value.dailytotalexpense()[4]??0, fri: value.dailytotalexpense()[5]??0,
           sat: value.dailytotalexpense()[6]??0, sun:value.dailytotalexpense()[7]??0

       )

     )

   );
  }

}