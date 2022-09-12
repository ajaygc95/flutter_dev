import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:blit/services/world_time.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void setupWorldTime() {
    WolrdTime instance =
        WolrdTime('Los Angeles, CA', 'USA', 'America/Los_Angeles');
        instance.getTim
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Text('Loading Screen ... ')));
  }
}
