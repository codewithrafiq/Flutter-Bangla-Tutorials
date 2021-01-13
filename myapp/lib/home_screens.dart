import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/single_todo.dart';

class HomeScreens extends StatefulWidget {
  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final _textField = TextEditingController();
  final _todoUpdate = TextEditingController();

  Future<void> _addtodo() async {
    if (_textField.text.length <= 0) {
      return;
    }

    final collucrion = FirebaseFirestore.instance.collection('todo');

    await collucrion.add({
      "title": _textField.text,
    });

    _textField.text = '';
    Navigator.of(context).pop();
  }

  Future<void> delateTodo(String id) async {
    try {
      final collucrion = FirebaseFirestore.instance.collection('todo').doc(id);
      await collucrion.delete();
    } catch (e) {
      print(e);
    }
  }

  Future<void> _updatetod(String id) async {
    String updateText = _todoUpdate.text;
    try {
      DocumentReference documentReference =
          FirebaseFirestore.instance.collection('todo').doc(id);
      FirebaseFirestore.instance.runTransaction((transaction) async {
        await transaction.get(documentReference);
        transaction.update(documentReference, {
          'title': updateText,
        });
      });
      Navigator.of(context).pop();
      _todoUpdate.text = '';
    } catch (e) {}
  }

  Future<void> editButton(String id) async {
    final collucrion = FirebaseFirestore.instance.collection('todo').doc(id);
    await collucrion.get().then((value) {
      _todoUpdate.text = value.data()['title'];
    });
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Update Todo"),
          content: TextField(
            controller: _todoUpdate,
            decoration: InputDecoration(
              hintText: "Update a Todo",
            ),
          ),
          actions: [
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
            RaisedButton(
              onPressed: () {
                _updatetod(id);
              },
              child: Text("Update"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("todo").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Text("NO Data Found!"),
            );
          }
          return ListView(
            children: snapshot.data.docs
                .map(
                  (todoData) => SingleTodo(
                    todo: todoData.data()['title'],
                    id: todoData.id,
                    delFunction: delateTodo,
                    editFunction: editButton,
                  ),
                )
                .toList(),
          );
        },
        // builder: ,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Add Todo"),
                content: TextField(
                  controller: _textField,
                  decoration: InputDecoration(
                    hintText: "Add a Todo",
                  ),
                ),
                actions: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Cancel"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      _addtodo();
                    },
                    child: Text("Add"),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
