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
        "http://www.cathealthy.ca/wp-content/uploads/2014/06/Home.jpg"),
    Cat("Boobie",
        "https://www.rspcapetinsurance.org.au/getattachment/1d38bbc7-a213-4b2e-b2eb-9246af080204/grooming-your-cat.aspx"),
    Cat("Snookie", "https://scx2.b-cdn.net/gfx/news/hires/2019/1-cat.jpg"),
  ];

  void onButtonPressed() {
    setState(() {
      listOfCats.add(Cat("Random cat",
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cat-quotes-1543599392.jpg"));
    });
    print(listOfCats);
  }

  Widget build(BuildContext context) {
    List<Widget> listOfCatCards = [];
    for (Cat cat in listOfCats) {
      listOfCatCards.add(CatCard(cat));
    }
    return Scaffold(
        appBar: AppBar(title: Text("Cat app")),
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
