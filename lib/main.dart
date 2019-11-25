import 'package:catapp/cat_card.dart';
import 'package:flutter/material.dart';

import 'cat_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Cat> listOfCats = [
    Cat("Cookie",
        "https://images.unsplash.com/photo-1445499348736-29b6cdfc03b9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=60"),
    Cat("Boobie",
        "https://images.unsplash.com/photo-1515002246390-7bf7e8f87b54?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=60"),
    Cat("Snookie", "https://images.unsplash.com/photo-1509670161296-18d69c8f2ffd?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=60"),
  ];

  void onButtonPressed() {
    setState(() {
      listOfCats.add(Cat("Random cat",
          "https://images.unsplash.com/photo-1533743983669-94fa5c4338ec?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=60"));
    });
    print(listOfCats);
  }

  Widget build(BuildContext context) {
    List<Widget> listOfCatCards = [];
    for (Cat cat in listOfCats) {
      listOfCatCards.add(CatCard(cat));
    }
    return Scaffold(
        appBar: AppBar(title: Text("Cat app"),
        backgroundColor: Colors.amber.withOpacity(0.8),),
        floatingActionButton: FloatingActionButton(
          onPressed: onButtonPressed,
          backgroundColor: Colors.amber,
          child: IconButton(
            icon: Icon(Icons.add),
            color: Colors.black26,
          ),
        ),
        body: ListView(
          children: listOfCatCards,
        ));
  }
}
