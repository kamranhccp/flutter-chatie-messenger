import 'package:chatiee/dummy_files/dummy_messages_individual_person.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottom_nav_bar.dart';

class MessageView extends StatefulWidget {
  const MessageView({super.key});

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNavigationExample(),
              ),
            );
          },
          splashRadius: 18.r,
          icon: Icon(
            size: 20.r,
            FontAwesomeIcons.chevronLeft,
            color: const Color(0xFF0F1828),
          ),
        ),
        foregroundColor: const Color(0xFF0F1828),
        title: Text(
          "Anastasiya Beguiler",
          style: TextStyle(
            fontFamily: GoogleFonts.mulish().fontFamily,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF0F1828),
          ),
        ),
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20.r,
              color: const Color(0xFF0F1828),
            ),
          ),
          // new chat
          IconButton(
            onPressed: () {},
            icon: Icon(
              // menu three horizontal lines
              size: 20.r,
              FontAwesomeIcons.ellipsisVertical,
              color: const Color(0xFF0F1828),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Chat messages SIZED BOX
            SizedBox(
              height: 0.8.sh,
              width: 1.sw,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: dummyMessagesIndividualPerson_1.length,
                itemBuilder: (context, index) {
                  final message = dummyMessagesIndividualPerson_1[index];
                  return Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.0.w, vertical: 8.0.h),
                    alignment: message.isSender
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: message.isSender
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        if (!message.isSender)
                          Text(
                            message.senderName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0.sp,
                            ),
                          ),
                        Container(
                          padding: EdgeInsets.all(8.0.r),
                          decoration: BoxDecoration(
                            color: message.isSender
                                ? const Color(0xFFE5E5E5)
                                : const Color(0xFF002DE3),
                            borderRadius: BorderRadius.circular(10.0.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                message.message,
                                style: TextStyle(
                                  color: message.isSender
                                      ? Colors.black
                                      : Colors.white,
                                  fontSize: 14.0.sp,
                                ),
                              ),
                              SizedBox(height: 4.0.h),
                              Text(
                                message.date,
                                style: TextStyle(
                                  color: message.isSender
                                      ? Colors.grey
                                      : Colors.white54,
                                  fontSize: 12.0.sp,
                                ),
                              ),
                              // if (!message.isSender)
                              //   Image.asset(message.imageUrl),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Input field
            Container(
              height: 0.1.sh,
              width: 1.sw,
              color: const Color(0xFFFFFFFF),
              child: Row(
                children: [
                  // Attach file
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.paperclip,
                      size: 20.r,
                      color: const Color(0xFF0F1828),
                    ),
                  ),
                  // Input field
                  Container(
                    height: 0.05.sh,
                    width: 0.7.sw,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5E5E5),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Type a message",
                        hintStyle: TextStyle(
                          fontFamily: GoogleFonts.mulish().fontFamily,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF0F1828),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 10.w,
                          bottom: 10.h,
                        ),
                      ),
                    ),
                  ),
                  // Send button
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.solidPaperPlane,
                      size: 20.r,
                      color: const Color(0xFF002DE3),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
