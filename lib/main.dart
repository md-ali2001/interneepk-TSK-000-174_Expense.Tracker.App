import 'package:expensetracker/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'expensedata.dart';





class HomeScreen extends StatefulWidget {
  const HomeScreen({ super.key });

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  final newexpensename=TextEditingController();
  final newexpenseamount=TextEditingController();
  final newexpenseday=TextEditingController();

  void save()
  {
    ExpenseItem newexpense=ExpenseItem(name: newexpensename.text, amount: newexpenseamount.text, day: newexpenseday.text);
    Provider.of<expensedata>(context,listen:false).addnewexpense(newexpense);
    newexpensename.clear();
    newexpenseamount.clear();
    newexpenseday.clear();
    
    
    Navigator.pop(context);

  }

  void cancel()
  {
    Navigator.pop(context);
  }

  void addnewexpense()
  {
    showDialog(context: context, builder: (context)=>AlertDialog(title: Text('Add New Expense'),
    content: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(controller: newexpensename),
          TextField(controller: newexpenseamount),
          TextField(controller: newexpenseday)

        ],
      ),
    ),
      actions: [
        MaterialButton(onPressed: save,
        child: Text('Save'),
        ),

        MaterialButton(onPressed: cancel,
          child: Text('Cancel'),
        )

      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<expensedata>(
      builder:(context,value,child)=>Scaffold(
      backgroundColor: Colors.grey,


      floatingActionButton: FloatingActionButton(onPressed:
        addnewexpense,

        child: Icon(Icons.add),

      ),
      
      body: ListView.builder(
        itemCount: value.getallexpenselist().length,

        itemBuilder:(context,index)=>ListTile(title: Text(value.getallexpenselist()[index].name)
            ,trailing: Text('Rs.'+value.getallexpenselist()[index].amount),
    ))));
  }
}