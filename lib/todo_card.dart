import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final taskCountSection = Container(
    padding: EdgeInsets.only(left: 8,),
    child: Text('9 Tasks', style: TextStyle(color: Colors.grey[500]),),
  );
  final taskTypeSection = Container(
    padding: EdgeInsets.only(left:8),
    child: Text('Personal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),),
  );
  final headerSection = Expanded(
    child : Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.account_circle),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child:  Icon(Icons.more_vert),
          ),

        ],
      ),
    ),
  );

  final bottomSection = Container(
    padding: EdgeInsets.all(8),
    child: Row(
      children: <Widget>[
        Text('83%', style: TextStyle(color: Colors.grey[500]),),
      ],
    ),
  );



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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          headerSection,
          taskCountSection,
          taskTypeSection,
          bottomSection,
        ],
      ),
    );
  }
}
