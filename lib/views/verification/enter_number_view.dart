import 'package:chatiee/views/verification/enter_otp.dart';
import 'package:chatiee/views/walkthrough_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterNumberView extends StatelessWidget {
  const EnterNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              // go back to previous screen
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WalkthroughView()));
            },
            icon: Icon(
              size: 24.w,
              Icons.arrow_back_ios_new,
              color: const Color(0xFF0F1828),
            ),
          ),
        ),
        body: Column(
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
                    color: const Color(0xFF002DE3),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontFamily: GoogleFonts.mulish().fontFamily,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFFFFFFFF),
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
                    color: const Color(0xFFE5E5E5),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                          fontFamily: GoogleFonts.mulish().fontFamily,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF0F1828)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80.h,
            ),
            Center(
              child: Text(
                "Enter Your Phone Number",
                style: TextStyle(
                    fontFamily: GoogleFonts.mulish().fontFamily,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF0F1828)),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Wrap(
              children: [
                Center(
                  child: Text(
                    "Please confirm your country code and enter",
                    style: TextStyle(
                        fontFamily: GoogleFonts.mulish().fontFamily,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF0F1828)),
                  ),
                ),
                Center(
                  child: Text(
                    "your phone number",
                    style: TextStyle(
                        fontFamily: GoogleFonts.mulish().fontFamily,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF0F1828)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.w,
                right: 24.w,
              ),
              child: Container(
                width: 343.w,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                    color: const Color(0xFFADB5BD),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    Image.asset(
                      'assets/countries/Flag.png',
                      width: 24.w,
                      height: 24.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      "+62",
                      style: TextStyle(
                          fontFamily: GoogleFonts.mulish().fontFamily,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF0F1828)),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          hintStyle: TextStyle(
                              fontFamily: GoogleFonts.mulish().fontFamily,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFADB5BD)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 81.h,
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
                    return const EnterOTPView();
                  }));
                },
                child: Text(
                  "Continue",
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
    );
  }
}
