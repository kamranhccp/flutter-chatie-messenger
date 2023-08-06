import 'package:chatiee/views/verification/enter_number_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WalkthroughView extends StatelessWidget {
  const WalkthroughView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 140.h,
          ),
          Image.asset(
            'assets/illustration/illus1.png',
            width: 262.w,
            height: 271.h,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 50.h,
          ),
          Wrap(
            children: [
              Center(
                child: Text(
                  "Connect easily with",
                  style: TextStyle(
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF0F1828)),
                ),
              ),
              Center(
                child: Text(
                  "people and friends over ",
                  style: TextStyle(
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF002DE3)),
                ),
              ),
              Center(
                child: Text(
                  "world with Chatiee",
                  style: TextStyle(
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF0F1828)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Text(
            "Terms & Privacy Policy",
            style: TextStyle(
                fontFamily: GoogleFonts.mulish().fontFamily,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF0F1828)),
          ),
          SizedBox(
            height: 50.h,
          ),
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF002DE3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33.r)),
                fixedSize: Size(327.w, 52.h)),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const EnterNumberView();
              }));
            },
            child: Text(
              "Start Messaging",
              style: GoogleFonts.mulish(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFF7F7FC)),
            ),
          ),
        ],
      )),
    );
  }
}
