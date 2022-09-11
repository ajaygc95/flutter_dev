import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    Key? key,
    required this.quote,
  }) : super(key: key);

  final quote;

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
              width: 10,
            ),
            Text(
              quote.author,
              style: TextStyle(
                  color: Colors.amber[800], fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text,
            ),
          ],
        ),
      ),
    );
  }
}
