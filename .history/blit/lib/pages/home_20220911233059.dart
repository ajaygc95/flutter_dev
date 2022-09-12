import 'package:flutter/material.dart';
import 'package:intl/intl_browser.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Object? data;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments;
    print(data);

    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        TextButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, '/location');
          },
          icon: Icon(Icons.edit_location),
          label: Text('Edit Location'),
        )
      ],
    )));
  }
}
