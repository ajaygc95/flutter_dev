import 'package:equatable/equatable.dart';
import 'package:lockfin/models/messages.dart';

class Chat extends Equatable {
  final int id;
  final int userId;
  final int matchedUserId;
  final List<Message> messages;

  const Chat({
    required this.id,
    required this.userId,
    required this.matchedUserId,
    required this.messages,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        userId,
        matchedUserId,
        messages,
      ];

  static List<Chat> chats = [
    Chat(
        id: 1,
        userId: 1,
        matchedUserId: 2,
        messages: Message.messages
            .where((message) =>
                (message.senderId == 1 && message.receiverId == 2) ||
                (message.senderId == 2 && message.receiverId == 1))
            .toList()),
    Chat(
        id: 1,
        userId: 1,
        matchedUserId: 3,
        messages: Message.messages
            .where((message) =>
                (message.senderId == 1 && message.receiverId == 3) ||
                (message.senderId == 3 && message.receiverId == 1))
            .toList()),
    Chat(
        id: 1,
        userId: 1,
        matchedUserId: 4,
        messages: Message.messages
            .where((message) =>
                (message.senderId == 1 && message.receiverId == 4) ||
                (message.senderId == 4 && message.receiverId == 1))
            .toList()),
    Chat(
        id: 1,
        userId: 1,
        matchedUserId: 5,
        messages: Message.messages
            .where((message) =>
                (message.senderId == 1 && message.receiverId == 5) ||
                (message.senderId == 5 && message.receiverId == 1))
            .toList()),
    Chat(
        id: 1,
        userId: 1,
        matchedUserId: 5,
        messages: Message.messages
            .where((message) =>
                (message.senderId == 1 && message.receiverId == 2) ||
                (message.senderId == 2 && message.receiverId == 1))
            .toList()),
  ];
}
