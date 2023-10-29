import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateScroll extends StatefulWidget {
  @override
  _DateScrollState createState() => _DateScrollState();
}

class _DateScrollState extends State<DateScroll> {
  final DateTime now = DateTime.now();
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = now;
  }

  List<Widget> _buildDateWidgets() {
    final List<Widget> dateWidgets = [];
    final double dateSpacing = 26.0;

    final DateTime firstDayOfMonth =
    DateTime(selectedDate.year, selectedDate.month, 1);
    final DateFormat dayFormat = DateFormat('d');
    final DateFormat weekdayFormat = DateFormat('E');

    for (int i = 0; i < 30; i++) {
      final DateTime currentDate = firstDayOfMonth.add(Duration(days: i));
      final bool isSelected = currentDate == selectedDate;

      // Wrap each date in a GestureDetector to make them selectable
      dateWidgets.add(
        GestureDetector(
          onTap: () {
            setState(() {
              selectedDate = currentDate;
            });
          },
          child: Container(
            width: 39.17, height: 22,
                decoration: isSelected
                    ? ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Color(0xFF25CED1),
                      ),
                      borderRadius: BorderRadius.circular(12))
                ): null,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 19, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        dayFormat.format(currentDate),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: Color(0xFF091F44),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        weekdayFormat.format(currentDate),
                        style: TextStyle(fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF94A3B8)),
                      ),
                    ],
                  ),
                ),
          ),
        ),
      );

      // Add spacing between dates
      dateWidgets.add(SizedBox(width: dateSpacing));
    }

    return dateWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _buildDateWidgets(),
          ),
        ),
      ],
    );
  }
}
