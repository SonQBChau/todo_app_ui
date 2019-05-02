import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final List todos = [
    1,2,3
  ];

  Widget _buildItem(BuildContext context, int index){
    final todo = todos[index];

    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: _buildItem,
        itemCount: todos.length,
    );
  }
}
