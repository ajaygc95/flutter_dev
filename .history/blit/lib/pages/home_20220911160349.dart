import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        TextButton.icon(
          onPressed: () {
            Na
          },
          icon: Icon(Icons.edit_location),
          label: Text('Edit Location'),
        )
      ],
    )));
  }
}
