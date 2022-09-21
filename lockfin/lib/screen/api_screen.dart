import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lockfin/widgets/custom_bar.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../models/model.dart';

class ApiScreen extends StatefulWidget {
  static const String routeName = '/apiscreen';

  Client client = http.Client();

  List<User> user = [];

  @override
  void initState() {
    print("hello");
    _retrieveData();
  }

  // const ApiScreen({super.key});

  _retrieveData() async {
    user = [];
    var response = await client.get(Uri.parse("http://127.0.0.1:8000/api"));
    var jsondata = jsonDecode(response.body);
    print(jsondata);
  }

  @override
  State<ApiScreen> createState() => _APiScreenState();
}

class _APiScreenState extends State<ApiScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "API SCREEN"),
      body: Center(
        child: Text(
          'API SCREEN:!!!',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}

// class ApiScreen extends StatelessWidget {
//   static const String routeName = '/profilescreen';
//   // final String first_name, last_name, emp_id;

//   getUserData() async {
//     var response = await http.get(Uri.parse("http://127.0.0.1:8000/api"));
//     var jsondata = jsonDecode(response.body);
//     print(jsondata);
//     // List<String> user = [];

//     // for (var u in jsondata) {
//     //   print(u);
//     // }
//   }

//   const ApiScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     getUserData();
//     return Scaffold(
//       appBar: CustomAppBar(title: "API SCREEN"),
//       body: Center(
//         child: Text(
//           'API SLKJDF:!!!',
//           style: Theme.of(context).textTheme.headline1,
//         ),
//       ),
//     );
//   }
// }
