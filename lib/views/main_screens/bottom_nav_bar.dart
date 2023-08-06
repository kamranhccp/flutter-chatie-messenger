import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chat_view.dart';
import 'contacts_view.dart';
import 'more_settings.dart';

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int _selectedTab = 0;

  final List<Widget> _pages = [
    const ContactsView(),
    const ChatView(),
    const MoreSettingsView(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedTab,
        onItemSelected: (index) => _changeTab(index),
        animationDuration: const Duration(milliseconds: 300),
        showElevation: true,
        containerHeight: 60,
        items: [
          BottomNavyBarItem(
            icon: const Icon(
              FontAwesomeIcons.addressBook,
              color: Color(0xFF001A83),
            ),
            title: Text(
              "Contacts",
              style: TextStyle(
                fontFamily: GoogleFonts.mulish().fontFamily,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: const Color(
                  0xFF001A83,
                ),
              ),
            ),
            textAlign: TextAlign.center,
            activeColor: const Color(0xFF0F1828),
            inactiveColor: const Color(0xFF828282),
          ),
          BottomNavyBarItem(
            icon: const Icon(
              color: Color(0xFF001A83),
              FontAwesomeIcons.comment,
            ),
            title: Text(
              "Chat",
              style: TextStyle(
                fontFamily: GoogleFonts.mulish().fontFamily,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: const Color(
                  0xFF001A83,
                ),
              ),
            ),
            textAlign: TextAlign.center,
            activeColor: const Color(0xFF0F1828),
            inactiveColor: const Color(0xFF828282),
          ),
          BottomNavyBarItem(
            icon: const Icon(
              color: Color(0xFF001A83),
              FontAwesomeIcons.ellipsis,
            ),
            title: Text(
              "More",
              style: TextStyle(
                fontFamily: GoogleFonts.mulish().fontFamily,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: const Color(
                  0xFF001A83,
                ),
              ),
            ),
            textAlign: TextAlign.center,
            activeColor: const Color(0xFF0F1828),
            inactiveColor: const Color(0xFF828282),
          ),
        ],
      ),
    );
  }
}
