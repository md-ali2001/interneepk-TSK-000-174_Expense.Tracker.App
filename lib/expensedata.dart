import 'package:flutter/material.dart';

import 'expense_item.dart';

class expensedata extends ChangeNotifier{

  List<ExpenseItem> overallexpenselist=[];

  List<ExpenseItem> getallexpenselist()
  {
    return overallexpenselist;
  }

  void addnewexpense(ExpenseItem newexpense)
  {
    overallexpenselist.add(newexpense);
    notifyListeners();
  }

  void deletexpense(ExpenseItem expense)
  {
    overallexpenselist.remove(expense);
  }

  String getdayname(DateTime datetime)
  {
    switch(datetime.weekday)
        {
      case 1:
        return 'Mon';
      case 2:
        return 'Tue';
      case 3:
        return 'Wed';

      case 4:
        return 'Thu';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';

      case 7:
        return 'Sun';

      default:
        return '';

    }
  }


  Map<String,double> dailytotalexpense()
  {
    Map<String,double> dailyexpensesummary={};

    for(var expense in overallexpenselist)
      {
        String day=expense.day;
        double amount=double.parse(expense.amount);
        if(dailyexpensesummary.containsKey(day))
          {
            double currentamount=dailyexpensesummary[day]!;
            currentamount+=amount;
          }
        else{
          dailyexpensesummary.addAll({day:amount});
        }





      }
    return dailyexpensesummary;
  }



}