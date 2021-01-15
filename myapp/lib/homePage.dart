import 'package:flutter/material.dart';
import 'package:myapp/add_edit_screens.dart';
import 'package:myapp/state/globalState.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gData = Provider.of<GlobalState>(context).todos;
    void _delateTodo(id) {
      Provider.of<GlobalState>(context, listen: false).deleteTodo(id);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo App"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddEditScreens.routeName);
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: gData.length,
          itemBuilder: (ctx, i) {
            return Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text("${i + 1}"),
                    SizedBox(width: 15),
                    Text(gData[i].title),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        _delateTodo(gData[i].id);
                      },
                      color: Colors.red,
                      iconSize: 30,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
