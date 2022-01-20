import 'package:flutter/material.dart';
import "custom.dart";

void main() {
  runApp(MaterialApp(
    home: Rist(),
    debugShowCheckedModeBanner: false,
  ));
}

class Rist extends StatefulWidget {
  Rist({Key? key}) : super(key: key);

  @override
  _RistState createState() => _RistState();
}

class _RistState extends State<Rist> {
  Color red = Colors.red;
  List<Quote> qoutes = [
    Quote(text: "Control is an illusion", author: "Emilio kariuki"),
    Quote(text: "Control is an illusion", author: "Emilio kariuki"),
    Quote(text: "Control is an illusion", author: "Emilio kariuki")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: red,
      appBar: AppBar(
        title: Text("ListView"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: qoutes.map((quote) {
          return Text('${quote.text} - ${quote.author}');
        }).toList(),
      ),
    );
  }
}
