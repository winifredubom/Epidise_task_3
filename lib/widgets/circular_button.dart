import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularButtonsRow extends StatefulWidget {
  @override
  _CircularButtonsRowState createState() => _CircularButtonsRowState();
}

class _CircularButtonsRowState extends State<CircularButtonsRow> {
  List<bool> isSelected = List.generate(24, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Horizontal scrolling
        itemCount: 24, // 24 hours in a day
        itemBuilder: (context, index) {
          // Calculate the hour for the current button
          int hour = index % 12;
          String time = (hour == 0) ? '12:00\n AM' : '$hour:00 ' + ((index < 12) ? '\nAM' : '\nPM');

          return Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                // Toggle the selection state
                setState(() {
                  isSelected[index] = !isSelected[index];
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(11, 15, 11, 11),
                width: 60, // Adjust the size of the circular button
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected[index] ? Color(0xFF25CED1) : Color(0xFFF8F8F8), // Button background color
                ),
                child: Center(
                  child: Text(
                    time,
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
