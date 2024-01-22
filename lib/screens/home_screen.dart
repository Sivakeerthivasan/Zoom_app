import 'dart:html';

import 'package:flutter/material.dart';
import 'package:zoom_clone_tutorial/resources/auth_methods.dart';
import 'package:zoom_clone_tutorial/screens/history_meeting_screen.dart';
import 'package:zoom_clone_tutorial/screens/meeting_screen.dart';
import 'package:zoom_clone_tutorial/utils/colors.dart';
import 'package:zoom_clone_tutorial/widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int_page=0;
  onPageChanged(int page){
    setState(() {
      _page = page;
    });
  }
  List<Widget>pages = [
    MeetingScreen(),
    const HistoryMeetingScreen(),
    const Text('Contacts'),
    CustomButton(text:'Log out',onpressed:()=> AuthMethods().signout()),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          title: const Text('Meet & Chat'),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: footerColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          ontap: onPageChanged,
          currentIndex: _page,
          type:BottomNavigationBar Type.fixed,
          unselectedFontSize:14,
          items:const [
            BottomNavigationBarItem(
              icon:Icon(
                Icons.comment_bank,
              ),
              label:'Meet & Char',
            ),
            BottomNavigationBarItem(
              icon:Icon(
                Icons.person_outline,
              ),
              label:'Contacts',
            ),
            label:'Settings',
            +
          ],
          ),
        );
  }
}
