import 'package:chatiee/model/message_model.dart';

List<MessageModel> dummyMessages = [
  MessageModel(
    senderName: "Hamza",
    senderPhoto: "assets/avatar/a1.png",
    message: "UI is ready dude :)",
    unreadMessage: true,
    date: "10:00 AM",
  ),
  MessageModel(
    senderName: "Sara",
    senderPhoto: "assets/avatar/a2.png",
    message: "Internship is going well :)",
    unreadMessage: false,
    date: "Yesterday",
  ),
  MessageModel(
    senderName: "Ali",
    senderPhoto: "assets/avatar/a3.png",
    message: "Where are you?",
    unreadMessage: true,
    date: "Monday",
  ),
  MessageModel(
    senderName: "Kamran",
    senderPhoto: "assets/avatar/a4.png",
    message: "I'm waiting for your call",
    unreadMessage: false,
    date: "March 20",
  ),
  MessageModel(
    senderName: "Elaine",
    senderPhoto: "assets/avatar/a2.png",
    message: "What's up?",
    unreadMessage: false,
    date: "Yesterday",
  ),
].toList();
