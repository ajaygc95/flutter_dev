import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
home:test(),
));

class test extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLIT FINDERRRRRR"),
        centerTitle: true,
        backgroundColor: Colors.red[300],
      ),
      body: const Center(
        child: Text(
          'THIS IS BODY WRITTEN INSIDE wild!!!!!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
            fontFamily: 'cuptertino',
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Color.fromARGB(255, 92, 244, 54),
        child: Text('Click'),
      ),
    );
  }
}
