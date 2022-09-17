import 'package:flutter/material.dart';
import 'package:lockfin/widgets/custom_button.dart';
import 'package:lockfin/widgets/custom_image_container.dart';
import 'package:lockfin/widgets/custom_text_filed.dart';
import 'package:lockfin/widgets/custom_text_header.dart';

class PictureScreen extends StatelessWidget {
  final TabController tabController;
  const PictureScreen({super.key, required this.tabController});

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
                text: "Add 2 or More Pictures",
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  CustomImageContainer(),
                  CustomImageContainer(),
                  CustomImageContainer(),
                ],
              ),
              Row(
                children: [
                  CustomImageContainer(),
                  CustomImageContainer(),
                  CustomImageContainer(),
                ],
              ),
            ],
          ),
          CustomBotton(tabController: tabController, text: 'Next Step'),
        ],
      ),
    );
  }
}
