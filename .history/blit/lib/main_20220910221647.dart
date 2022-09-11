import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BLIT FINDERRRRRR"),
          centerTitle: true,
          backgroundColor: Colors.red[300],
        ),
        body: const Center(
          child: Text(
            'THIS IS BODY WRITTEN INSIDE CHILD!!!!!',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Color.fromARGB(255, 244, 67, 54),
          child: const Text('Click'),
        ),
      ),
    ));
