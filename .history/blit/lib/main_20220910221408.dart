import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BLIT FINDERRRRRR"),
          centerTitle: true,
          backgroundColor: Colors.red[300],
        ),
        body: Center(
          child: Text('THIS IS BODY WRITTEN INSIDE CHILD!!!!!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Text('Click'),
          backgroundColor: Colors.yellow,
          focusColor: ,
        ),
      ),
    ));
