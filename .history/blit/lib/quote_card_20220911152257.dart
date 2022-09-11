import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  

  final quote;
  final delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              quote.author,
              style: TextStyle(
                  color: Colors.amber[800], fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text(
                'Delete',
                style: TextStyle(color: Colors.red),
              ),
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
