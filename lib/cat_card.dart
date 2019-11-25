import 'dart:ui';

import 'package:flutter/material.dart';

import 'cat_model.dart';

class CatCard extends StatelessWidget {
  Cat cat;

  CatCard(this.cat);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:8, left: 16, right: 16),
      child: Container(
        height: 100,
        color: Colors.brown.withOpacity(0.4),
        child: Row(
            children: [Image(image: NetworkImage(cat.url),
            height: 100,
            width: 180,
            fit: BoxFit.cover),
              Padding(
                padding: EdgeInsets.only( left:16 ),
                child:  Text(cat.name)
              )
    ]))
    );
  }
}
