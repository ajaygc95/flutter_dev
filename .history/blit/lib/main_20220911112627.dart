import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(
      home: Test(),
    ));

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLIT FINDERRRRRR"),
        centerTitle: true,
        backgroundColor: Colors.red[300],
      ),


      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Color.fromARGB(255, 92, 244, 54),
        child: Text('Click'),
      ),
    );
  }
}
