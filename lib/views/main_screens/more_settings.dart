import 'package:chatiee/views/main_screens/chat_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreSettingsView extends StatelessWidget {
  const MoreSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "More",
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
      body: Column(
        children: [
          // personal info like name, phone number, photo
          Container(
            height: 100.h,
            width: double.infinity,
            color: const Color(0xFFFFFFFF),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 10.w,
                  ),
                  child: CircleAvatar(
                    radius: 30.r,
                    backgroundImage: const AssetImage(
                      "assets/avatar/a1.png",
                    ),
                  ),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Doe",
                      style: TextStyle(
                        fontFamily: GoogleFonts.mulish().fontFamily,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF0F1828),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "+91 987-654-3210",
                      style: TextStyle(
                        fontFamily: GoogleFonts.mulish().fontFamily,
                        fontSize: 15.sp,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF0F1828),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ChatView();
                },
              ));
            },
            child: ListTile(
              leading: const Icon(
                Icons.settings,
                color: Color(0xFF0F1828),
              ),
              title: Text(
                "Settings",
                style: TextStyle(
                  fontFamily: GoogleFonts.mulish().fontFamily,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF0F1828),
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF0F1828),
              ),
            ),
          ),
          const Divider(
            color: Color(0xFFE5E5E5),
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.privacy_tip,
              color: Color(0xFF0F1828),
            ),
            title: Text(
              "Privacy",
              style: TextStyle(
                fontFamily: GoogleFonts.mulish().fontFamily,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF0F1828),
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF0F1828),
            ),
          ),
          const Divider(
            color: Color(0xFFE5E5E5),
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.help,
              color: Color(0xFF0F1828),
            ),
            title: Text(
              "Help",
              style: TextStyle(
                fontFamily: GoogleFonts.mulish().fontFamily,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF0F1828),
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF0F1828),
            ),
          ),
          const Divider(
            color: Color(0xFFE5E5E5),
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Color(0xFF0F1828),
            ),
            title: Text(
              "Logout",
              style: TextStyle(
                fontFamily: GoogleFonts.mulish().fontFamily,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF0F1828),
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF0F1828),
            ),
          ),
          const Divider(
            color: Color(0xFFE5E5E5),
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
