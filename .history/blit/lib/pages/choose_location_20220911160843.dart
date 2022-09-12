import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text('Choose a Location'),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(child: TextButton(label: 'Choose location ')));
  }
}
