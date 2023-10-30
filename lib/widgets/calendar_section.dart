import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarSection extends StatefulWidget {
  @override
  _CalendarSectionState createState() => _CalendarSectionState();
}

class _CalendarSectionState extends State<CalendarSection> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  Set<DateTime> _selectedDays = {};

  String getCurrentMonthYearInWords() {
    final monthFormat = DateFormat('MMMM');
    final yearFormat = DateFormat('y');
    final monthName = monthFormat.format(_focusedDay);
    final year = yearFormat.format(_focusedDay);
    return '$monthName $year';
  }

  onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      if (_selectedDays.contains(selectedDay)) {
        _selectedDays.remove(selectedDay);
      } else {
        _selectedDays.add(selectedDay);
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(13, 15, 12, 30),
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          children: [
            // Header with Month and Year
            Container(
              height: 52,
              decoration: BoxDecoration(
                color: Color(0xFF25CED1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      getCurrentMonthYearInWords(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Iconsax.arrow_left_2,
                          color: Colors.white,),
                        onPressed: () {
                          setState(() {
                            _focusedDay = DateTime(
                              _focusedDay.year,
                              _focusedDay.month - 1,
                            );
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(Iconsax.arrow_right_3,
                          color: Colors.white,),
                        onPressed: () {
                          setState(() {
                            _focusedDay = DateTime(
                              _focusedDay.year,
                              _focusedDay.month + 1,
                            );
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //Calendar Widget
            Container(
              padding: EdgeInsets.fromLTRB(26, 11, 32, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
                color: Color(0xFFF8F8F8),),
              child: TableCalendar(
                firstDay: DateTime(2023, 1, 1),
                lastDay: DateTime(2023, 12, 31),
                focusedDay: DateTime.now(),
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  return false;
                },
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
                onPageChanged: (focusedDay) {
                  setState(() {
                    _focusedDay = focusedDay;
                  });
                },
                  onDaySelected: onDaySelected,
                headerVisible: false,
                daysOfWeekStyle: const  DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                  ),
                  weekendStyle: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                calendarStyle: const CalendarStyle(
                  defaultTextStyle: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                  ),
                  selectedTextStyle: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                  ),
                  todayTextStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  cellPadding: EdgeInsets.fromLTRB(0, 10, 0, 0)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
