import 'package:chatiee/views/verification/enter_number_view.dart';
import 'package:chatiee/views/verification/enter_profile_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterOTPView extends StatefulWidget {
  const EnterOTPView({super.key});

  @override
  State<EnterOTPView> createState() => _EnterOTPViewState();
}

class _EnterOTPViewState extends State<EnterOTPView> {
  // controllers for the text fields of OTP
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();
  final TextEditingController _thirdController = TextEditingController();
  final TextEditingController _fourthController = TextEditingController();

  //focusNode for the text fields of OTP
  final FocusNode _firstFocusNode = FocusNode();
  final FocusNode _secondFocusNode = FocusNode();
  final FocusNode _thirdFocusNode = FocusNode();
  final FocusNode _fourthFocusNode = FocusNode();

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
                      builder: (context) => const EnterNumberView()));
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
                    color: const Color(0xFF002DE3),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(
                          fontFamily: GoogleFonts.mulish().fontFamily,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFFFFFFF)),
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
              height: 70.h,
            ),
            Center(
              child: Text(
                "Enter Code",
                style: TextStyle(
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
                    "We have sent you an SMS with the code",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF0F1828)),
                  ),
                ),
                Center(
                  child: Text(
                    "to +62 1309-1710-1920",
                    style: TextStyle(
                        fontSize: 16.sp,
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
                left: 50.w,
                right: 50.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 48.w,
                    height: 48.h,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF0F1828),
                      ),
                      decoration: InputDecoration(
                        fillColor: const Color(0xFFE5E5E5),
                        filled: true,
                        contentPadding: EdgeInsets.only(
                          left: 13.w,
                          right: 13.w,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 48.w,
                    height: 48.h,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF0F1828),
                      ),
                      decoration: InputDecoration(
                        fillColor: const Color(0xFFE5E5E5),
                        filled: true,
                        contentPadding: EdgeInsets.only(
                          left: 13.w,
                          right: 13.w,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 48.w,
                    height: 48.h,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF0F1828),
                      ),
                      decoration: InputDecoration(
                        fillColor: const Color(0xFFE5E5E5),
                        filled: true,
                        contentPadding: EdgeInsets.only(
                          left: 13.w,
                          right: 13.w,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 48.w,
                    height: 48.h,
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).unfocus();
                        }
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF0F1828),
                      ),
                      decoration: InputDecoration(
                        fillColor: const Color(0xFFE5E5E5),
                        filled: true,
                        contentPadding: EdgeInsets.only(
                          left: 13.w,
                          right: 13.w,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 77.h,
            ),
            // TODO: Add Resend Code Button
            TextButton(
              onPressed: () {},
              child: Text(
                "Resend Code",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF002DE3),
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
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
                    return const ProfileDetailsView();
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
