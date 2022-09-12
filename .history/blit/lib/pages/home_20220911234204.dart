import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments;
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
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          data['location'],
          style: TextStyle(
              fontSize: 28.0,
              letterSpacing: 2.0,
              color: Colors.amber,
              fontWeight: FontWeight.bold),
        )
      ],
    )));
  }
}
