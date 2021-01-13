import 'package:flutter/material.dart';

class SingleTodo extends StatelessWidget {
  final String todo;
  final String id;
  final Function delFunction;
  final Function editFunction;
  SingleTodo({
    this.todo,
    this.id,
    this.delFunction,
    this.editFunction,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                todo,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  editFunction(id);
                },
                icon: Icon(
                  Icons.edit,
                  size: 25,
                  color: Colors.green,
                ),
              ),
              IconButton(
                onPressed: () {
                  delFunction(id);
                },
                icon: Icon(
                  Icons.delete,
                  size: 25,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
