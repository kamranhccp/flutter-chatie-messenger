class MessageModel {
  final String senderName;
  final String senderPhoto;
  final String message;
  final bool unreadMessage;
  final String date;

  MessageModel({
    required this.senderName,
    required this.senderPhoto,
    required this.message,
    required this.unreadMessage,
    required this.date,
  });
}
