import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lockfin/blocs/swipe_bloc.dart';
import 'package:lockfin/models/model.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: SvgPicture.asset(
          'assets/Youtube.svg',
          height: 40,
          color: Colors.blueGrey,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send_rounded,
                  color: Colors.blueGrey,
                  size: 40,
                )),
          ),
        ],
      ),
      body: BlocBuilder<SwipeBloc, SwipeState>(builder: (context, state) {
        if (state is SwipeLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SwipeLoaded) {
          return Column(
            children: [
              Draggable(
                  feedback: UserCard(user: User.users[0]),
                  child: UserCard(user: User.users[0]),
                  childWhenDragging: UserCard(user: User.users[1]),
                  onDragEnd: (drag) {
                    if (drag.velocity.pixelsPerSecond.dx < 0) {
                      print('Swiped Left');
                    } else {
                      print('Swiped Right');
                    }
                  }),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ],
          );
        } else {
          return Text("Something Went Wrong!!!!");
        }
      }),
    );
  }
}
