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
    Quote(
        text: "Control is an illusion The if block may",
        author: "Emilio kariuki"),
    Quote(
        text: "Control is an illusion The if block may",
        author: "Emilio kariukim"),
    Quote(
        text: "Control is an illusion The if block may",
        author: "Emilio kariuki")
  ];
  Widget quoteTemplate(quote) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: QuoteCard(quote: quote),
    );
  }

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
          return quoteTemplate(quote);
        }).toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({Key? key, required this.quote}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
