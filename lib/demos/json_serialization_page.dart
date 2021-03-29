import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/services.dart';
import 'package:food_hunter/modal/recommendedFood.dart';
import 'package:food_hunter/modal/user.dart';

class JsonSerializationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _JsonSerializationState();
  }
}

class _JsonSerializationState extends State<JsonSerializationPage> {

  _covertJson() async {
    String jsonString = await rootBundle.loadString("assets/user.json");
    Map<String, dynamic> userMap = jsonDecode(jsonString);
    var user = User.fromJson(userMap);

    print('$user');
    print('user name, ${user.name}!');
    print('user email, ${user.email}!');
    print('user gender, ${user.gender}!');
    print('user age, ${user.age}!');

    String foodJsonString = await rootBundle.loadString("assets/recommendedFood.json");
    Map<String, dynamic> foodMap = jsonDecode(foodJsonString);
    var food = RecommendedFood.fromJson(foodMap);

    print('food name, ${food.name}!');
    print('food location stress, ${food.location.street}!');
    print('food location city, ${food.location.city}!');
    print('food type, ${food.type}!');
    print('food open date, ${food.openDate}!');
  }

  @override
  Widget build(BuildContext context) {
    var spacer = new SizedBox(height: 32.0);
    return Scaffold(
      appBar: AppBar(title: const Text('Json Demo')),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text('After decode user info:'),
            spacer,
            new ElevatedButton(
              onPressed: _covertJson,
              child: new Text('decode user info'),
            ),
          ],
        ),
      ),
    );
  }
}
