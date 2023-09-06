import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({ super.key });

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  void addnewexpense()
  {
    showDialog(context: context, builder: (context)=>AlertDialog(title: Text('Add New Expense'),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,


      floatingActionButton: FloatingActionButton(onPressed:
        addnewexpense,

        child: Icon(Icons.add),),
    );
  }
}