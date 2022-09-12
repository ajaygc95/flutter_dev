import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getData() async {
    Response response =
        await get('https://jsonplaceholder.typicode.com/todos/1');
        print
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Text('Loading Screen ... ')));
  }
}
