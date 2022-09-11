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
      // body: Center(
      //     child: Image.asset(
      //   'assets/image-1.JPG'
      // )

      //     // 'https://scontent-sjc3-1.xx.fbcdn.net/v/t39.30808-1/299209392_581293603642141_3095214815689405781_n.jpg?stp=dst-jpg_p200x200&_nc_cat=108&ccb=1-7&_nc_sid=7206a8&_nc_ohc=f3lu7kx7DrYAX9e7NIY&_nc_ht=scontent-sjc3-1.xx&oh=00_AT-6zhk0R8jq4YTuZKdb2QoQ_owRvBn0zfJRWQci7u9CsQ&oe=63232D74')

      //     // child: Text(
      //     //   'THIS IS BODY inside hun !!!!',
      //     //   style: TextStyle(
      //     //     fontSize: 20.0,
      //     //     fontWeight: FontWeight.bold,
      //     //     color: Colors.teal,
      //     //     fontFamily: 'cuptertino',
      //     //   ),
      //     // ),

      //     ),


      body: Center(
        


      )
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Color.fromARGB(255, 92, 244, 54),
        child: Text('Click'),
      ),
    );
  }
}
