class MessagePersonIndividualModel {
  final String senderName;
  final String date;
  final String message;
  final bool unreadMessage;
  final bool isSender;
  final String imageUrl;

  MessagePersonIndividualModel({
    required this.senderName,
    required this.date,
    required this.message,
    required this.unreadMessage,
    required this.isSender,
    required this.imageUrl,
  });
}
