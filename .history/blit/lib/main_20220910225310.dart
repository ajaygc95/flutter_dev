import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BLIT FINDERRRRRR"),
          centerTitle: true,
          backgroundColor: Colors.red[300],
        ),
        body: Center(
          child: Text(
            'THIS IS BODY WRITTEN INSIDE CHILD!!!!!',
            style: GoogleFonts.pacifico()(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          backgroundColor: Color.fromARGB(255, 92, 244, 54),
          child: Text('Click'),
        ),
      ),
    ));
