import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:lockfin/widgets/custom_bar.dart';
import 'package:lockfin/widgets/small_user_image.dart';

import '../models/model.dart';

class MatchesScreen extends StatelessWidget {
  static const routeName = '/matchescreen';

  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final inactiveMatches = UserMatch.matches
        .where((match) => match.userId == 1 && match.chat!.isEmpty)
        .toList();
    final activeMatches = UserMatch.matches
        .where((match) => match.userId == 1 && match.chat!.isNotEmpty)
        .toList();
    return Scaffold(
      appBar: CustomAppBar(title: "MATCHES"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Your Likes", style: Theme.of(context).textTheme.headline4),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: inactiveMatches.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SmallImage(
                            height: 70,
                            width: 70,
                            imageUrl: inactiveMatches[index]
                                .matchedUser
                                .imageUrls[0]),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          inactiveMatches[index].matchedUser.name,
                          style: Theme.of(context).textTheme.headline5,
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Text("Your Chats", style: Theme.of(context).textTheme.headline4),
              ListView.builder(
                shrinkWrap: true,
                itemCount: activeMatches.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/chat',
                          arguments: activeMatches[index]);
                    },
                    child: Row(children: [
                      SmallImage(
                        height: 70,
                        width: 70,
                        imageUrl: activeMatches[index].matchedUser.imageUrls[0],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              activeMatches[index].matchedUser.name,
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            Text(
                              activeMatches[index].chat![0].messages[0].message,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(fontWeight: FontWeight.normal),
                            ),
                            Text(
                              activeMatches[index]
                                  .chat![0]
                                  .messages[0]
                                  .timeString,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      )
                    ]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
