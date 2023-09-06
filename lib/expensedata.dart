import 'expense_item.dart';

class expensedata{

  List<ExpenseItem> overallexpenselist=[];

  List<ExpenseItem> getallexpenselist()
  {
    return overallexpenselist;
  }

  void addnewexpense(ExpenseItem newexpense)
  {
    overallexpenselist.add(newexpense);
  }

  void deleteexpense(ExpenseItem expense)
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

}