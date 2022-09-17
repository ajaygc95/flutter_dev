import 'package:flutter/material.dart';
import 'package:lockfin/widgets/custom_button.dart';
import 'package:lockfin/widgets/custom_text_filed.dart';
import 'package:lockfin/widgets/custom_text_header.dart';

class Email extends StatelessWidget {
  final TabController tabController;
  const Email({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomTextHeader(
                  tabController: tabController,
                  text: "Enter Your Email Address."),
              CustomTextField(
                text: 'TYPE HERE',
                tabController: tabController,
              )
            ],
          ),
          CustomBotton(tabController: tabController, text: 'Next Step'),
        ],
      ),
    );
  }
}
