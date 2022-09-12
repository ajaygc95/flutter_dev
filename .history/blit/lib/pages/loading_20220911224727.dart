import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getData() async {
    Response response = await get(
        Uri.parse("http://worldtimeapi.org/api/timezone/America/Los_Angeles"));
    Map data = jsonDecode(response.body);
    String datetime = data['datetime'];
    String dateoffset = data['utc_offset'];

    print(datetime);
    print(dateoffset);

    // Create a datetime Object
    DateTime now = DateTime.parse(datetime);
    print(now);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Text('Loading Screen ... ')));
  }
}
