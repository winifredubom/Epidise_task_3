import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Remind_Buttons extends StatefulWidget {
  const Remind_Buttons({super.key});

  @override
  State<Remind_Buttons> createState() => _Remind_ButtonsState();
}

class _Remind_ButtonsState extends State<Remind_Buttons> {
  List<bool> isSelected = List.generate(60, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 60,
        itemBuilder: (context, index) {
          String minute = index.toString().padLeft(2, '0');

          return Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  isSelected[index] = !isSelected[index];
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(11, 15, 11, 11),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected[index] ? Color(0xFF25CED1) : Color(0xFFF8F8F8), // Button background color
                ),
                child: Center(
                  child: Text(
                    '$minute Mins',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: isSelected[index] ? Colors.white : Color((0xFF25CED1)), // Text color
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

