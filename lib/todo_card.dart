import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          Text('Row with Icon and expand dot'),
          Text('9 Tasks'),
          Text('Personal'),
          Text('Progress bar'),
        ],
      ),
    );
  }
}
