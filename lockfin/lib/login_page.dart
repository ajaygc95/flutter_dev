import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lockfin/home/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 235, 230),
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.favorite,
              size: 40,
              color: Color.fromARGB(255, 230, 52, 141),
            ),
            // LOCKIN Name greeting AND logo
            Text(
              'LockFin',
              style: GoogleFonts.bebasNeue(
                  fontSize: 60.0, color: Colors.deepOrangeAccent),
            ),
            Text(
              'Find your perfect match',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white10),
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                      hintText: 'Email'),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white10),
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                      hintText: 'Password'),
                ),
              ),
            ),
            // email
            // password
            // Sign in Button
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    // borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrangeAccent,
                            minimumSize: Size.fromHeight(50)),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(fontSize: 17),
                        )),
                  )),
            ),

            SizedBox(
              height: 25,
            ),

            // not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member? "),
                Text(
                  'Register Now',
                  style: TextStyle(
                      color: Colors.lightBlue, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
