// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'custom.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Card(
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
              SizedBox(height: 10),
              FlatButton.icon(
                  onPressed: delete,
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                  ),
                  label: Text("Delete Quote"))
            ],
          ),
        ),
      ),
    );
  }
}
