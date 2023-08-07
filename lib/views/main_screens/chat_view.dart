import 'package:chatiee/dummy_files/dummy_contacts.dart';
import 'package:chatiee/views/main_screens/message_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../dummy_files/dummy_messages.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chat",
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
          // new chat
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.penToSquare,
              color: Color(0xFF0F1828),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 105.h,
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(height: 8.h),
                    Container(
                      width: 65.w,
                      height: 65.h,
                      margin: EdgeInsets.only(
                        left: 10.w,
                        right: 10.w,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF166FF6),
                          width: 3.r,
                        ),
                        color: const Color(0xFFF7F7FC),
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Handle adding status
                        },
                        icon: Icon(
                          FontAwesomeIcons.plus,
                          size: 30.r,
                          color: const Color(0xFF166FF6),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.r),
                      child: Text(
                        'Your Status',
                        style: TextStyle(
                          color: const Color(0xFF0F1828),
                          fontFamily: GoogleFonts.mulish().fontFamily,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.w,
                              right: 10.w,
                              top: 8.h,
                            ),
                            child: Container(
                              width: 70.w,
                              height: 70.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.r),
                                border: Border.all(
                                  color: const Color(0xFF166FF6),
                                  width: 2.r,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(2.r),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25.r),
                                  child: Image.asset(
                                    dummyContacts[index].photo,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            dummyContacts[index].name,
                            style: TextStyle(
                              color: const Color(0xFF0F1828),
                              fontFamily: GoogleFonts.mulish().fontFamily,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          // Search bar
          Container(
            margin: EdgeInsets.only(
              top: 10.h,
              left: 10.w,
              right: 10.w,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  fontFamily: GoogleFonts.mulish().fontFamily,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF828282),
                ),
                border: InputBorder.none,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color(0xFF828282),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          // Chat list
          Expanded(
            child: ListView.builder(
              itemCount: dummyMessages.length,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Handle chat screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MessageView(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: const Color(0xFFE0E0E0),
                                width: 2.0.r,
                              ),
                            ),
                          ),
                          child: ListTile(
                            leading: SizedBox(
                              width: 55.w,
                              height: 55.h,
                              child: Padding(
                                padding: EdgeInsets.all(2.r),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16.r),
                                  child: Image.asset(
                                    dummyContacts[index].photo,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            title: Text(
                              dummyMessages[index].senderName,
                              style: TextStyle(
                                fontFamily: GoogleFonts.mulish().fontFamily,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF0F1828),
                              ),
                            ),
                            subtitle: Text(
                              dummyMessages[index].message,
                              style: TextStyle(
                                fontFamily: GoogleFonts.mulish().fontFamily,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF828282),
                              ),
                            ),
                            trailing: Column(
                              children: [
                                Text(
                                  dummyMessages[index].date,
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.mulish().fontFamily,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF828282),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                dummyMessages[index].unreadMessage
                                    ? Padding(
                                        padding: EdgeInsets.only(left: 20.w),
                                        child: Container(
                                          width: 22.w,
                                          height: 22.h,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFD2D5F9),
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '1',
                                              style: TextStyle(
                                                fontFamily: GoogleFonts.mulish()
                                                    .fontFamily,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w600,
                                                color: const Color(0xFF001A83),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
