import 'package:chatiee/model/contact_model.dart';

List<ContactModel> dummyContacts = {
  ContactModel(
    name: "John Doe",
    isOnline: true,
    lastSeen: "Online",
    photo: "assets/avatar/a1.png",
  ),
  ContactModel(
    name: "Halina",
    isOnline: false,
    lastSeen: "Last seen 2 hours ago",
    photo: "assets/avatar/a2.png",
  ),
  ContactModel(
    name: "Kamran",
    isOnline: true,
    lastSeen: "Online",
    photo: "assets/avatar/a3.png",
  ),
  ContactModel(
    name: "Sara",
    isOnline: false,
    lastSeen: "Last seen 2 hours ago",
    photo: "assets/avatar/a2.png",
  ),
  ContactModel(
    name: "Ali",
    isOnline: true,
    lastSeen: "Online",
    photo: "assets/avatar/a1.png",
  ),
}.toList();
