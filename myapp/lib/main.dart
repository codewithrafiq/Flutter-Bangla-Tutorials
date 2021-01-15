import 'package:flutter/material.dart';
import 'package:myapp/add_edit_screens.dart';
import 'package:myapp/homePage.dart';
import 'package:myapp/state/globalState.dart';
import 'package:provider/provider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GlobalState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          AddEditScreens.routeName: (ctx) => AddEditScreens(),
        },
      ),
    );
  }
}
