import 'package:flutter/material.dart';
import 'package:lockfin/widgets/custom_bar.dart';
import '../models/model.dart';

class ChatScreen extends StatelessWidget {
  final UserMatch userMatch;
  static const String routeName = '/chat';
  const ChatScreen({super.key, required this.userMatch});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        title: Row(children: [
          CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(
              userMatch.matchedUser.imageUrls[0],
            ),
          ),
          SizedBox(width: 10),
          Text(
            userMatch.matchedUser.name,
            style: Theme.of(context).textTheme.headline3,
          )
        ]),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: userMatch.chat != null
                  ? Container(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: userMatch.chat![0].messages.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: userMatch
                                          .chat![0].messages[index].senderId ==
                                      1
                                  ? Container(
                                      margin: EdgeInsets.only(left: 40),
                                      child: Align(
                                          alignment: Alignment.topRight,
                                          child: Expanded(
                                            child: Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                  color: Theme.of(context)
                                                      .backgroundColor),
                                              child: Text(
                                                userMatch.chat![0]
                                                    .messages[index].message,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline5,
                                              ),
                                            ),
                                          )),
                                    )
                                  : Container(
                                      margin: EdgeInsets.only(right: 40),
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(children: [
                                            CircleAvatar(
                                              radius: 15,
                                              backgroundImage: NetworkImage(
                                                userMatch
                                                    .matchedUser.imageUrls[0],
                                              ),
                                            ),
                                            SizedBox(width: 2),
                                            Expanded(
                                              child: Container(
                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(10),
                                                    ),
                                                    color: Theme.of(context)
                                                        .primaryColor),
                                                child: Flexible(
                                                  child: Text(
                                                    userMatch
                                                        .chat![0]
                                                        .messages[index]
                                                        .message,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline5!
                                                        .copyWith(
                                                            color:
                                                                Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ])),
                                    ),
                            );
                          }),
                    )
                  : SizedBox(),
            ),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 63, 238, 223)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 72, 74, 196)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Type Here...',
                      contentPadding: EdgeInsets.only(
                        left: 20,
                        bottom: 5,
                        top: 5,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(Icons.send_outlined),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
