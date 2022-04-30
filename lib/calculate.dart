import 'package:flutter/material.dart';

import 'detail.dart';

class Calculate extends StatefulWidget {
  @override
  _CalculateState createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {

  final nameController = TextEditingController();
  String name = "Empty Name";

  void changeName(){
    setState(() {
      name = nameController.text;
    });
  }

  void navigateToDetail() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Detail()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculate',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculate'),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Text('the name is $name'),
            ),
            ElevatedButton(
                onPressed: navigateToDetail ,
                child: Text('To Detail'),
            ),
            ElevatedButton(
              onPressed: changeName ,
              child: Text('Set Name'),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your name',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}