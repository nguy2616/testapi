import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/apiLink/API.dart';
import 'package:flutter_app/model/Food.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyListScreen(),
    );

  }
}
class MyListScreen extends StatefulWidget {
  @override
  createState() => _MyListScreenState();
}
class _MyListScreenState extends State {
  var foods = new List<Food>();

  _getFoods() {
    API.getFoods().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        foods = list.map((model) => Food.fromJson(model)).toList();
      });
    });
  }
  initState() {
    super.initState();
    _getFoods();
  }

  dispose() {
    super.dispose();
  }

  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Food List"),
        ),
        body: ListView.builder(
          itemCount: foods.length,
          itemBuilder: (context, index) {
            return ListTile(title: Image.network(foods[index].image),
            );
          },
        ));
  }

}
