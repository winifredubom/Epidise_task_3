import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:task_3/screens/calendar/calendar_screen.dart';
import 'package:task_3/screens/chat/chat_screen.dart';
import 'package:task_3/screens/home/homeScreen.dart';
import 'package:task_3/screens/profile/profile_screen.dart';
import '../routes/routes.dart';

class BottomNav extends StatefulWidget {
  AppRoutes ? appRoutes;

  BottomNav({super.key,   this.appRoutes});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          Home_screen(),
          Calendar_screen(),
          Chat_screen(),
          Profile_screen()
        ],
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
        height: 80,
        width: 360,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blue,
              blurRadius: 5,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height: 48,
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? 115
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? displayWidth * .12 : 0,
                    width: index == currentIndex ? displayWidth * .32 : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? Color(0xFFF4F4F4)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            AnimatedContainer(
                              duration:const  Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width:
                              index == currentIndex ? displayWidth * .13 : 0,
                            ),
                            AnimatedOpacity(
                              opacity: index == currentIndex ? 1 : 0,
                              duration: const  Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child: Text(
                                index == currentIndex
                                    ? '${listOfStrings[index]}'
                                    : '',
                                style: const TextStyle(
                                  color: Color(0xFF25CED1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  fontFamily: 'Nunito'
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width:
                              index == currentIndex ? displayWidth * .03 : 20,
                            ),
                            Icon(
                                index == currentIndex ? ActiveIcons[index] : InactiveIcons[index],
                              size: 24,
                              color: index == currentIndex ? Color(0xFF25CED1) : Color(0xff8696BB),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> listOfStrings = [
    'Home',
    'Date',
    'Chats',
    'Profile',
  ];


  List<IconData> ActiveIcons = [
    Iconsax.home_25,
    Iconsax.calendar_25,
    Iconsax.message5,
    Icons.person_2_rounded
  ];

  List<IconData> InactiveIcons = [
    Iconsax.home,
    Iconsax.calendar_2,
    Iconsax.message,
    Icons.person_2_outlined
  ];


}



