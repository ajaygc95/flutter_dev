import 'package:flutter/material.dart';
import '../models/model.dart';
import '../widgets/choice_button.dart';

class UserScreen extends StatefulWidget {
  static const routeName = '/userscreen';

  final User user;

  const UserScreen({super.key, required this.user});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    final User user = ModalRoute.of(context)!.settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Hero(
                    tag: 'user_image',
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(user.imageUrls[0]),
                              fit: BoxFit.cover,
                            ))),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ChoiceButton(
                          width: 60,
                          height: 60,
                          size: 25,
                          color: Colors.deepOrangeAccent,
                          icon: Icons.clear_rounded,
                          hasGradient: false,
                        ),
                        ChoiceButton(
                          width: 80,
                          height: 80,
                          size: 35,
                          color: Colors.white,
                          icon: Icons.favorite,
                          hasGradient: true,
                        ),
                        ChoiceButton(
                          width: 60,
                          height: 60,
                          size: 25,
                          color: Colors.black,
                          icon: Icons.watch_later,
                          hasGradient: false,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}, ${user.age} ',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RoboMono'),
                ),
                Text(
                  '${user.jobTitle}',
                  style: TextStyle(
                      fontWeight: FontWeight.normal, fontFamily: 'RoboMono'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'About',
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RoboMono'),
                ),
                Text(
                  '${user.bio}',
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'RobotoMono'),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Interests',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RoboMono'),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: user.interests
                      .map(
                        (interest) => Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(top: 5.0, right: 5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: LinearGradient(colors: [
                                Color.fromARGB(255, 199, 8, 88),
                                Color.fromARGB(255, 223, 69, 102)
                              ])),
                          child: Text(
                            interest,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
