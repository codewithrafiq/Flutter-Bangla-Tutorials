import 'package:flutter/material.dart';
import 'package:myapp/state/globalState.dart';
import 'package:provider/provider.dart';

class AddEditScreens extends StatefulWidget {
  static const routeName = '/add-edit-screens';
  @override
  _AddEditScreensState createState() => _AddEditScreensState();
}

class _AddEditScreensState extends State<AddEditScreens> {
  final _text = TextEditingController();

  void _addtodo() {
    if (_text.text.length <= 0) {
      return;
    }
    Todo newData = Todo(
      id: DateTime.now().toString(),
      title: _text.text,
      dateTime: DateTime.now(),
    );
    Provider.of<GlobalState>(context, listen: false).addTodo(newData);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Todo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(13),
        child: Column(
          children: [
            TextField(
              controller: _text,
              decoration: InputDecoration(
                hintText: "Add Todo",
              ),
            ),
            RaisedButton(
              onPressed: () {
                _addtodo();
              },
              child: Text("Add Todo"),
            ),
          ],
        ),
      ),
    );
  }
}
