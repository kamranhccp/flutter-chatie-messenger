import 'package:chatiee/views/verification/enter_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main_screens/bottom_nav_bar.dart';

class ProfileDetailsView extends StatelessWidget {
  const ProfileDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile Details",
            style: TextStyle(
              fontFamily: GoogleFonts.mulish().fontFamily,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF0F1828),
            ),
          ),
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              // go back to previous screen
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EnterOTPView()));
            },
            icon: Icon(
              size: 24.w,
              Icons.arrow_back_ios_new,
              color: const Color(0xFF0F1828),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 70.h,
              ),
              // 3 RoundBox with Number for Verification Process
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 35.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5E5E5),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontFamily: GoogleFonts.mulish().fontFamily,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xFF0F1828),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 35.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5E5E5),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontFamily: GoogleFonts.mulish().fontFamily,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF0F1828)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 35.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFF002DE3),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "3",
                        style: TextStyle(
                            fontFamily: GoogleFonts.mulish().fontFamily,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFFFFFFFF)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70.h,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 110.w,
                      height: 110.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE5E5E5),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: GestureDetector(
                        child: Icon(
                          Icons.person,
                          size: 80.w,
                          color: const Color(0xFF0F1828),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Positioned(
                      top: 75.h,
                      left: 75.w,
                      child: Container(
                        width: 32.w,
                        height: 32.h,
                        decoration: BoxDecoration(
                          color: const Color(0xFF002DE3),
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.camera_alt,
                            size: 20.w,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "First Name (Required)",
                    hintStyle: TextStyle(
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFADB5BD),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E5E5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E5E5),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Last Name (Required)",
                    hintStyle: TextStyle(
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFADB5BD),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E5E5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E5E5),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 24.w,
                  right: 24.w,
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF002DE3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(33.r)),
                      fixedSize: Size(327.w, 52.h)),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const BottomNavigationExample();
                    }));
                  },
                  child: Text(
                    "Save & Continue",
                    style: GoogleFonts.mulish(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFF7F7FC)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
