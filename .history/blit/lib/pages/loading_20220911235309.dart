import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:blit/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String time = 'loading....';

  void setupWorldTime() async {
    WolrdTime instance =
        WolrdTime('Los Angeles, CA', 'USA', 'America/Los_Angeles');
    await instance.getData();

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });

    setState(() {
      time = instance.time;
    });
    print(instance.time);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
