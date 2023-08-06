import 'package:chatiee/dummy_files/dummy_contacts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contacts",
          style: TextStyle(
            fontFamily: GoogleFonts.mulish().fontFamily,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF0F1828),
          ),
        ),
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
      ),
      //bottomNavigatorBar with 3 icons for contacts, chats and more
      // OnClick Will show the respective screen and icon disappears
      // and show text as Chats

      body: Column(
        children: [
          // searchbar
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
          // contacts list with Photo, name, last seen status and green dot if online
          Expanded(
            child: ListView.builder(
              itemCount: dummyContacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  // square photo with rounded corners
                  leading: Stack(
                    children: [
                      Container(
                        height: 53.r,
                        width: 53.r,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE0E0E0),
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Image.asset(
                          dummyContacts[index].photo,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: 38.w,
                        child: Container(
                          height: 13.r,
                          width: 13.r,
                          decoration: BoxDecoration(
                            // green dot if online else red dot
                            color: dummyContacts[index].isOnline
                                ? const Color(0xFF00B341)
                                : const Color(0xFFE53935),
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                    dummyContacts[index].name,
                    style: TextStyle(
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF0F1828),
                    ),
                  ),
                  subtitle: Text(
                    dummyContacts[index].lastSeen,
                    style: TextStyle(
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFADB5BD),
                    ),
                  ),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.chat_outlined,
                      color: Color(0xFF0F1828),
                    ),
                    onPressed: () {},
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
