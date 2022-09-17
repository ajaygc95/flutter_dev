import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lockfin/widgets/custom_button.dart';

class Start extends StatelessWidget {
  final TabController tabController;

  const Start({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            SvgPicture.asset(
              'assets/two_men.svg',
              height: 200,
              width: 200,
              color: Color.fromARGB(255, 177, 28, 102),
            ),
            SizedBox(height: 50),
            Text(
              'Welcome To LOCKFIND',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.headline6!.copyWith(height: 1.6),
            ),
            SizedBox(
              height: 20,
            ),
          ]),
          CustomBotton(
            tabController: tabController,
            text: "START",
          ),
        ],
      ),
    );
  }
}
