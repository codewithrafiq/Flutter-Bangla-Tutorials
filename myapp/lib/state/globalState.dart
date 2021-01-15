import 'package:flutter/cupertino.dart';

class Todo {
  final String id;
  final String title;
  final DateTime dateTime;
  Todo({
    this.id,
    this.title,
    this.dateTime,
  });
}

class GlobalState with ChangeNotifier {
  List<Todo> _todos = [
    Todo(
      id: "todo_1",
      title: "Todo-1",
      dateTime: null,
    ),
    Todo(
      id: "todo_2",
      title: "Todo-2",
      dateTime: null,
    ),
    Todo(
      id: "todo_3",
      title: "Todo-3",
      dateTime: null,
    ),
  ];

  List<Todo> get todos {
    return [..._todos];
  }

  void addTodo(Todo newTodo) {
    _todos.insert(0, newTodo);
    notifyListeners();
  }

  void deleteTodo(String todoId) {
    _todos.removeWhere((element) => element.id == todoId);
    notifyListeners();
  }
}
