import 'package:flutter/material.dart';
import 'package:lockfin/widgets/custom_button.dart';
import 'package:lockfin/widgets/custom_text_container.dart';
import 'package:lockfin/widgets/custom_text_filed.dart';
import 'package:lockfin/widgets/custom_text_header.dart';

class BioScreen extends StatelessWidget {
  final TabController tabController;
  const BioScreen({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(
                  tabController: tabController, text: "Describe Yourself"),
              CustomTextField(
                text: 'TYPE HERE',
                tabController: tabController,
              ),
              SizedBox(height: 100),
              CustomTextHeader(
                  tabController: tabController, text: "What Do You Like?"),
              SizedBox(height: 20),
              Row(children: [
                CustomTextContainer(
                    tabController: tabController, text: "Music"),
                CustomTextContainer(
                    tabController: tabController, text: "Dance"),
                CustomTextContainer(
                    tabController: tabController, text: "Sports"),
                CustomTextContainer(
                    tabController: tabController, text: "Movies"),
                CustomTextContainer(tabController: tabController, text: "Art"),
              ]),
              Row(children: [
                CustomTextContainer(
                    tabController: tabController, text: "COffee"),
                CustomTextContainer(
                    tabController: tabController, text: "Tv series"),
                CustomTextContainer(
                    tabController: tabController, text: "Friends"),
                CustomTextContainer(
                    tabController: tabController, text: "Beaches"),
              ]),
              Row(children: [
                CustomTextContainer(
                    tabController: tabController, text: "Programming"),
                CustomTextContainer(
                    tabController: tabController, text: "Clubbing"),
                CustomTextContainer(
                    tabController: tabController, text: "Sports"),
                CustomTextContainer(tabController: tabController, text: "Lazy"),
              ]),
            ],
          ),
          CustomBotton(tabController: tabController, text: 'Next Step'),
        ],
      ),
    );
  }
}
