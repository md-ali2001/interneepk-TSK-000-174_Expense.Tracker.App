

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class expensetile extends StatelessWidget{

  final String name;
  final String amount;

  const expensetile(
  {
    super.key,
    required this.name,
    required this.amount
});

  @override
  Widget build(BuildContext context) {
   return ListTile(
     title: Text(name),
   );
  }
  
}