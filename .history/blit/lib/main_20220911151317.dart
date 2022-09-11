import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quote.dart';

void main() => runApp(const MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List quotes = [
    Quote("I am Super Hot ", "Natalia"),
    Quote("I love that", "Ajay"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 228, 208),
      appBar: AppBar(
        title: Text('BLITs'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
          children: quotes.map((quote) => QuoteCard(quote: quote)).toList()),
    );
  }
}

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    Key? key,
    required this.quote,
  }) : super(key: key);

  final quote;

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              quote.author,
              style: TextStyle(color: Colors.amber),
            ),
          ],
        ),
      ),
    );
  }
}




// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int hotness_level = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[850],
//       appBar: AppBar(
//         title: const Text("BLIT"),
//         centerTitle: true,
//         backgroundColor: Colors.red[300],
//         elevation: 0.0,
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           Center(
//             child: CircleAvatar(
//               backgroundImage: NetworkImage(
//                 'https://scontent-sjc3-1.xx.fbcdn.net/v/t39.30808-1/299209392_581293603642141_3095214815689405781_n.jpg?stp=dst-jpg_p200x200&_nc_cat=108&ccb=1-7&_nc_sid=7206a8&_nc_ohc=f3lu7kx7DrYAX9e7NIY&_nc_ht=scontent-sjc3-1.xx&oh=00_AT-6zhk0R8jq4YTuZKdb2QoQ_owRvBn0zfJRWQci7u9CsQ&oe=63232D74',
//               ),
//               radius: 60,
//             ),
//           ),
//           Divider(height: 90.0, color: Colors.grey[800]),
//           Text(
//             'NAME',
//             style: TextStyle(
//                 color: Color.fromARGB(255, 241, 240, 240), letterSpacing: 2.0),
//           ),
//           SizedBox(
//             height: 10.0,
//           ),
//           Text(
//             'Natalia Korpal',
//             style: TextStyle(
//                 color: Colors.amber,
//                 letterSpacing: 2.0,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold),
//           ),
//           SizedBox(
//             height: 30.0,
//           ),
//           Text(
//             'Hotness Level',
//             style: TextStyle(
//                 color: Color.fromARGB(255, 241, 240, 240), letterSpacing: 2.0),
//           ),
//           SizedBox(
//             height: 10.0,
//           ),
//           Text(
//             '$hotness_level',
//             style: TextStyle(
//                 color: Colors.amber,
//                 letterSpacing: 2.0,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold),
//           ),
//           SizedBox(
//             height: 30.0,
//           ),
//           Row(
//             children: [
//               Icon(
//                 Icons.email,
//                 color: Colors.grey[400],
//               ),
//               SizedBox(width: 10.0),
//               Text(
//                 'hottiehothot@hotter.com',
//                 style: TextStyle(
//                     color: Colors.amber, fontSize: 18.0, letterSpacing: 1.0),
//               )
//             ],
//           )
//         ]),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             hotness_level += 1;
//           });
//         },
//         backgroundColor: Color.fromARGB(255, 92, 244, 54),
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }



/*
      body: Row(
        children: [
          Column(
            children: [
              Image.network(
                'https://scontent-sjc3-1.xx.fbcdn.net/v/t39.30808-1/299209392_581293603642141_3095214815689405781_n.jpg?stp=dst-jpg_p200x200&_nc_cat=108&ccb=1-7&_nc_sid=7206a8&_nc_ohc=f3lu7kx7DrYAX9e7NIY&_nc_ht=scontent-sjc3-1.xx&oh=00_AT-6zhk0R8jq4YTuZKdb2QoQ_owRvBn0zfJRWQci7u9CsQ&oe=63232D74',
              ),
            ],
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.red,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.green,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.blue,
              child: Text('3'),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              padding: EdgeInsets.all(20.0),
              color: Color.fromARGB(255, 66, 226, 17),
              child: Text('One')),
          Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('Two')),
          Container(
              padding: EdgeInsets.all(40.0),
              color: Colors.amber,
              child: Text('Three')),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.cyan,
              child: Text('One')),
          Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('Two')),
          Container(
              padding: EdgeInsets.all(40.0),
              color: Colors.amber,
              child: Text('Three')),
        ],
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
          margin: const EdgeInsets.all(30.0),
          color: Colors.redAccent[400],
          child: const Text("Hellow world")),


      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text('Hellow World'),
          ElevatedButton(onPressed: () {}, child: const Text('Click ME!')),
          Container(
              color: Colors.cyan,
              child: Text("Inside Contaier"),
              padding: const EdgeInsets.all(30.0))
        ],
      ),
*/


      // body: Center(
      //   child: Image.network(
      //     'https://scontent-sjc3-1.xx.fbcdn.net/v/t39.30808-1/299209392_581293603642141_3095214815689405781_n.jpg?stp=dst-jpg_p200x200&_nc_cat=108&ccb=1-7&_nc_sid=7206a8&_nc_ohc=f3lu7kx7DrYAX9e7NIY&_nc_ht=scontent-sjc3-1.xx&oh=00_AT-6zhk0R8jq4YTuZKdb2QoQ_owRvBn0zfJRWQci7u9CsQ&oe=63232D74',
      //     height: 500,
      //     width: 500,
      //   ),
      // ),

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

      // body: Center(
      //     child: Icon(
      //   Icons.airport_shuttle,
      //   color: Colors.lightBlue,
      //   size: 50.0
      // )),
      // body: Center(
      //   child: RaisedButton(onPressed: () {}
      //   ,child: Text("CLICK ME"),
      //   color: Colors.lightBlue)

      // )

      // body: Center(
      //   child: ElevatedButton(
      //     style: ButtonStyle(
      //       overlayColor: MaterialStateProperty.all<Color>(Colors.red),
      //     ),
      //     onPressed: () {},
      //     child: Text("CLICK ME!!!"),
      //   ),
      // ),