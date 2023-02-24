import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:proj3/homepage/add_modal.dart';
import 'package:proj3/homepage/calendar.dart';
import 'package:proj3/homepage/chat_page.dart';
import 'package:proj3/homepage/homepage.dart';
import 'package:proj3/homepage/user_profile.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar : PersistentTabView(
            context,
            screens : screens(),
            items : navBarItems(),
            navBarStyle : NavBarStyle.style6,
          ),
        ),
    );
    
  }

  List<Widget> screens(){
    return[
      const Myhomepage(),
      const MyCalendar(),
      const MyAddmodal(),
      const MyChatPage(),
      const MyUserProfile()
    ];
  }

  List<PersistentBottomNavBarItem> navBarItems(){
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title : "home",
        activeColorPrimary : const Color(0xff6C63FF),
        inactiveColorPrimary : Colors.grey
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.calendar_month),
        title : "Calendar",
        activeColorPrimary : const Color(0xff6C63FF),
        inactiveColorPrimary : Colors.grey
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.add_box),
        title : "Add Modal",
        activeColorPrimary : const Color(0xff6C63FF),
        inactiveColorPrimary : Colors.grey
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.chat_rounded),
        title : "Chat",
        activeColorPrimary : const Color(0xff6C63FF),
        inactiveColorPrimary : Colors.grey
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_2),
        title : "User Profile",
        activeColorPrimary : const Color(0xff6C63FF),
        inactiveColorPrimary : Colors.grey
      ),
    ];
  }
}