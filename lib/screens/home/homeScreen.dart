import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_3/widgets/dates.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:iconsax/iconsax.dart';
import '../../widgets/acne_test_report.dart';
import '../../widgets/calendar_section.dart';
import '../../widgets/circular_button.dart';
import '../../widgets/date_section.dart';
import '../../widgets/home_appbar.dart';
import '../../widgets/remind_buttons.dart';
import '../../widgets/upcoming_appointmnets.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  bool _showButton = true;
  bool _showMiniContainers = false;
  bool _showButton1 = true;
  bool _showMiniContainers1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: Padding(
          padding: EdgeInsets.fromLTRB(21, 35, 21, 0),
              child: CustomScrollView(
                  scrollDirection: Axis.vertical,
                  slivers: [
                    SliverToBoxAdapter(
                      child: Container(
                        child:  Column(
                              children: [
                                home_appbar(),
                                const SizedBox(height: 25,),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Oct 13,2023',
                                              style: TextStyle(fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF929CAD)
                                              ),
                                            ),
                                            Text('Today',
                                              style: TextStyle(fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF091F44)),),

                                          ],
                                        ),
                                        TextButton(
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Color(0xFF25CED1)),
                                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(12.0), // Rounded border
                                            )),
                                            fixedSize: MaterialStateProperty.all(Size(96, 30))
                                          ),
                                            onPressed: () {
                                              showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  context: context,
                                                  builder: (context) {
                                                    return Container(
                                                      height: 680,
                                                        child: MyBottomSheetContent());
                                                  },
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(40.0),
                                                  topRight: Radius.circular(40.0),
                                                )
                                              ));
                                            },
                                            child: const Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.edit,
                                                  size: 14,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(width: 4,),
                                                Text('Edit',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Colors.white
                                                ),)
                                              ],
                                            ))
                                      ],
                                    ),
                                    Date_section(),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(5, 14, 0, 20),
                                      child: Container(
                                        child: Column(
                                          children: [
                                            const Align(
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          'Upcoming Appointments',
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontWeight: FontWeight.w600,
                                                              fontSize: 16,
                                                              fontFamily: 'Poppins',
                                                              color: Color(0xDE000000)
                                                          ),
                                                        ),
                                                        Text('These are upcoming requests for appointments',
                                                          style: TextStyle(fontSize: 12,
                                                              fontFamily: 'Poppins',
                                                              fontWeight: FontWeight.w400,
                                                              color: Color(0x99000000)),),

                                                      ],
                                                    ),
                                            ),
                                            const SizedBox(height: 16,),
                                            Container(
                                              height: 220,
                                                child: ListView(
                                                  scrollDirection: Axis.horizontal,
                                                  children: <Widget>[
                                                    upcoming_appointments(),
                                                    SizedBox(width: 20,),
                                                    upcoming_appointments(),
                                                    SizedBox(width: 20,),
                                                    upcoming_appointments(),
                                                  ],
                                                )
                                            ),
                                            SizedBox(height: 40,),
                                               Align(
                                                 alignment: Alignment.topLeft,
                                                 child: Column(
                                                    children: [
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            'View Test Result',
                                                            textAlign: TextAlign.start,
                                                            style: TextStyle(fontWeight: FontWeight.w600,
                                                                fontSize: 16,
                                                                fontFamily: 'Poppins',
                                                                color: Color(0xFF1E293B)
                                                            ),
                                                          ),
                                                          Text('These are the test results from previous appointment with Mr. Anuj Garewal',
                                                            style: TextStyle(fontSize: 12,
                                                                fontFamily: 'Poppins',
                                                                fontWeight: FontWeight.w400,
                                                                color: Color(0xFF575A61)),),

                                                        ],
                                                      ),
                                                      SizedBox(height: 10),
                                                      Align(
                                                        alignment: Alignment.topLeft,
                                                        child: Padding(
                                                          padding: const EdgeInsets.only(left: 10, right: 10),
                                                          child: Container(
                                                            width: 350, height: 178,
                                                            decoration: BoxDecoration(
                                                                color: Colors.white,
                                                                borderRadius: BorderRadius.all(Radius.circular(12))
                                                            ),
                                                            child: const Column(
                                                              mainAxisSize: MainAxisSize.min,
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets.fromLTRB(10, 14, 10, 0),
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                    children: [
                                                                      CircleAvatar(
                                                                        radius: 20,
                                                                        backgroundImage:AssetImage('lib/assets/home image.png') ,
                                                                      ),
                                                                      SizedBox(width: 8,),
                                                                      Column(
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Melanoma Cell Count',
                                                                            style: TextStyle(fontWeight: FontWeight.w700,
                                                                                fontSize: 16,
                                                                                fontFamily: 'Poppins',
                                                                                color: Color(0xDE000000)
                                                                            ),
                                                                          ),
                                                                          Text('Epidise skin care lab',
                                                                            style: TextStyle(fontSize: 14,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w400,
                                                                                color: Color(0x99000000)),),

                                                                        ],
                                                                      ),
                                                                      SizedBox(width: 6,),
                                                                      Align(
                                                                        alignment: Alignment.centerRight,
                                                                        child: Icon(Iconsax.arrow_right_3,
                                                                          color: Colors.black,
                                                                        size: 24,),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(height: 2.5,),
                                                                Divider(
                                                                  color: Color(0x26000000),
                                                                  thickness: 1,
                                                                  indent: 19,
                                                                  endIndent: 19,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets.fromLTRB(20, 12, 10, 0),
                                                                  child: Row(
                                                                    children: [
                                                                      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                        children: [
                                                                          Icon(Iconsax.calendar_2,
                                                                            size: 16,
                                                                            color: Colors.black,),
                                                                          SizedBox(width: 8,),
                                                                          Text('Sunday, 12 June',
                                                                            style: TextStyle(
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.w400,
                                                                                fontFamily: 'Poppins',
                                                                                color: Colors.black
                                                                            ),)
                                                                        ],
                                                                      ),
                                                                      SizedBox(width: 22,),
                                                                      Padding(
                                                                        padding: EdgeInsets.fromLTRB(10, 0, 21, 0),
                                                                        child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                          children: [
                                                                            Icon(Iconsax.clock,
                                                                              size: 16,
                                                                              color: Colors.black,),
                                                                            SizedBox(width: 8,),
                                                                            Text('11:00 - 12:00 AM',
                                                                              style: TextStyle(
                                                                                  fontSize: 12,
                                                                                  fontWeight: FontWeight.w400,
                                                                                  fontFamily: 'Poppins',
                                                                                  color: Colors.black
                                                                              ),)
                                                                          ],
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(height: 20,),
                                                                Padding(
                                                                  padding: EdgeInsets.fromLTRB(20, 12, 10, 0),
                                                                  child: Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                        children: [
                                                                          Icon(Iconsax.scan,
                                                                            size: 16,
                                                                            color: Colors.black,),
                                                                          SizedBox(width: 8,),
                                                                          Text('MRI Scan ',
                                                                            style: TextStyle(
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.w400,
                                                                                fontFamily: 'Poppins',
                                                                                color: Colors.black
                                                                            ),)
                                                                        ],
                                                                      ),
                                                                      SizedBox(width: 70,),
                                                                       Padding(
                                                                        padding:  EdgeInsets.fromLTRB(0, 0, 35, 0),
                                                                        child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                          children: [
                                                                            Icon(Iconsax.direct4,
                                                                              size: 16,
                                                                              color: Colors.black,),
                                                                            SizedBox(width: 4,),
                                                                            Text('Inflammation\n detected',
                                                                              textAlign: TextAlign.justify,
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 12,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w400,
                                                                                height: 0,),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(height: 5,),
                                                      Column(
                                                        children: [
                                                          if (_showButton)
                                                          Align(
                                                            alignment: Alignment.center,
                                                            child: ElevatedButton(
                                                              style: ElevatedButton.styleFrom(
                                                                backgroundColor: Colors.white,
                                                                fixedSize: Size(280, 38),
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(12)
                                                                ),
                                                                elevation: 0
                                                              ),
                                                                onPressed: (){
                                                                  setState(() {
                                                                    _showButton = false;
                                                                    _showMiniContainers = true;
                                                                  });
                                                                },

                                                                child:
                                                                const Align(
                                                                  alignment: Alignment.center,
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    children: [
                                                                      Icon(Iconsax.add,
                                                                      color: Color(0xFF25CED1),
                                                                      size: 20,
                                                                        weight: 0.5,
                                                                      ),
                                                                      Text('View more test results',
                                                                      textAlign: TextAlign.center,
                                                                      style: TextStyle(
                                                                        fontSize: 16,
                                                                        fontWeight: FontWeight.w400,
                                                                        color: Color(0xFF25CED1),
                                                                        fontFamily: 'montserrat'
                                                                      ),)
                                                                    ],
                                                                  ),
                                                                )),
                                                          ),
                                                          if (_showMiniContainers)
                                                            ExpandableContent(),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                               ),
                                            const SizedBox(height: 40,),
                                           Column(
                                                children: [
                                                const Align(
                                                  alignment:Alignment.topLeft,
                                                  child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Last Appointment Details',
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(fontWeight: FontWeight.w600,
                                                          fontSize: 16,
                                                          fontFamily: 'Poppins',
                                                          color: Color(0xFF1E293B)
                                                      ),
                                                    ),
                                                    Text('Mr. Anuj Garewal at 9 Oct 2023, 5:41 pm',
                                                      style: TextStyle(fontSize: 12,
                                                          fontFamily: 'Poppins',
                                                          fontWeight: FontWeight.w400,
                                                          color: Color(0xFF575A61)),),

                                                  ],
                                              ),
                                                ),
                                                  SizedBox(height: 18,),
                                                  Row(
                                                    children: [
                                                      Container(
                                                            width: 111, height: 130,
                                                            decoration: BoxDecoration(
                                                                color: Colors.white,
                                                                borderRadius: BorderRadius.all(Radius.circular(12))
                                                            ),
                                                            child: Center(
                                                              child: Column(
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets.fromLTRB(34, 0, 34, 0),
                                                                    child: CircleAvatar(
                                                                      radius: 32,
                                                                      backgroundColor:Color(0xFF1FE38F) ,
                                                                      child: Image.asset('lib/assets/check_circle.png',
                                                                      width: 24, height: 24,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text('Medicines Ordered',
                                                                  textAlign: TextAlign.center,
                                                                  style: TextStyle(
                                                                    fontFamily: 'Poppins',
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 14,
                                                                    color: Color(0xDE000000)
                                                                  ),),
                                                                  Align(
                                                                    alignment: Alignment.center,
                                                                    child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                      children: [
                                                                        Text('more',
                                                                        style: TextStyle(
                                                                          fontSize: 12,
                                                                          fontFamily: 'Poppins',
                                                                          fontWeight: FontWeight.w400,
                                                                          color: Color(0x61000000)
                                                                        ),),
                                                                        Icon(Iconsax.arrow_right_3,
                                                                        color: Color(0x61000000),
                                                                        size: 15,)
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            )
                                                          ),
                                                      SizedBox(width: 10),
                                                      Container(
                                                          width: 111, height: 130,
                                                          decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.all(Radius.circular(12))
                                                          ),
                                                          child: Center(
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets.fromLTRB(34, 0, 34, 0),
                                                                  child: CircleAvatar(
                                                                    radius: 32,
                                                                    backgroundColor:Color(0xFFFFD739) ,
                                                                    child: Image.asset('lib/assets/info.png',
                                                                      width: 24, height: 24,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text('Treatment will start',
                                                                  textAlign: TextAlign.center,
                                                                  style: TextStyle(
                                                                      fontFamily: 'Poppins',
                                                                      fontWeight: FontWeight.bold,
                                                                      fontSize: 14,
                                                                      color: Color(0xDE000000)
                                                                  ),),
                                                                Align(
                                                                  alignment: Alignment.center,
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    children: [
                                                                      Text('more',
                                                                        style: TextStyle(
                                                                            fontSize: 12,
                                                                            fontFamily: 'Poppins',
                                                                            fontWeight: FontWeight.w400,
                                                                            color: Color(0x61000000)
                                                                        ),),
                                                                      Icon(Iconsax.arrow_right_3,
                                                                        color: Color(0x61000000),
                                                                        size: 15,)
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                      ),
                                                      SizedBox(width: 10),
                                                      Container(
                                                          width: 111, height: 130,
                                                          decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.all(Radius.circular(12))
                                                          ),
                                                          child: Center(
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets.fromLTRB(34, 0, 34, 0),
                                                                  child: CircleAvatar(
                                                                    radius: 32,
                                                                    backgroundColor:Color(0xFFF2595E) ,
                                                                    child: Image.asset('lib/assets/cancel.png',
                                                                      width: 24, height: 24,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text('Lab Test Cancelled',
                                                                  textAlign: TextAlign.center,
                                                                  style: TextStyle(
                                                                      fontFamily: 'Poppins',
                                                                      fontWeight: FontWeight.bold,
                                                                      fontSize: 14,
                                                                      color: Color(0xDE000000)
                                                                  ),),
                                                                Align(
                                                                  alignment: Alignment.center,
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    children: [
                                                                      Text('more',
                                                                        style: TextStyle(
                                                                            fontSize: 12,
                                                                            fontFamily: 'Poppins',
                                                                            fontWeight: FontWeight.w400,
                                                                            color: Color(0x61000000)
                                                                        ),),
                                                                      Icon(Iconsax.arrow_right_3,
                                                                        color: Color(0x61000000),
                                                                        size: 15,)
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                      ),
                                                    ],
                                                  )
                                              ]
                                            ),
                                            SizedBox(height:29,),
                                            Align(
                                                alignment: Alignment.topLeft,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.fromLTRB(10, 0, 8, 0),
                                                      width: 240, height: 100,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.all(Radius.circular(20))
                                                      ),
                                                      child: Center(
                                                        child: Row(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.fromLTRB(0 , 17, 0, 19),
                                                              child:Image.asset('lib/assets/game-icons_medicines.png',
                                                                  width: 64, height: 64,
                                                                color: Color(0xff25CED1), fit: BoxFit.fitHeight,
                                                                ),
                                                            ),

                                                            const Align(
                                                              alignment: Alignment.topCenter,
                                                              child: Column(
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Text('Last medicine:\n Aspirin',
                                                                      textAlign: TextAlign.center,
                                                                      style: TextStyle(
                                                                          fontFamily: 'Poppins',
                                                                          fontWeight: FontWeight.w600,
                                                                          fontSize: 12,
                                                                          color: Color(0xFF343434)
                                                                      ),),
                                                                    Text('1 tablet x 3 days',
                                                                      style: TextStyle(
                                                                          fontSize: 12,
                                                                          fontFamily: 'Poppins',
                                                                          fontWeight: FontWeight.w400,
                                                                          color: Color(0xFFA9A9A9)
                                                                      ),),
                                                                    Text('Suggest others',
                                                                      style: TextStyle(
                                                                          fontSize: 10,
                                                                          fontFamily: 'Poppins',
                                                                          fontWeight: FontWeight.w400,
                                                                          color: Color(0xFFA9A9A9)
                                                                      ),),
                                                                  ],
                                                                ),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                  ),
                                                  SizedBox(width: 10),
                                                  Container(
                                                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                      width: 108.5, height: 100,
                                                      decoration: BoxDecoration(
                                                          color: Color(0xFFFF8A5B),
                                                          borderRadius: BorderRadius.all(Radius.circular(20))
                                                      ),
                                                      child: Center(
                                                        child:
                                                            Padding(
                                                              padding: const EdgeInsets.fromLTRB(8 , 16, 10, 13),
                                                              child: const Align(
                                                                alignment: Alignment.topCenter,
                                                                child: Column(
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Text('Let us\n help you!',
                                                                      textAlign: TextAlign.center,
                                                                      style: TextStyle(
                                                                          fontFamily: 'Poppins',
                                                                          fontWeight: FontWeight.w500,
                                                                          fontSize: 12,
                                                                          color: Colors.white
                                                                      ),),
                                                                    Text('Please rate us on playstore',
                                                                      textAlign: TextAlign.center,
                                                                      style: TextStyle(
                                                                          fontSize: 10,
                                                                          fontFamily: 'Poppins',
                                                                          fontWeight: FontWeight.w400,
                                                                          color: Colors.white
                                                                      ),),
                                                                  ],
                                                                ),
                                                              )
                                                              ),
                                                      )
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 40,),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'View Treatment',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(fontWeight: FontWeight.w600,
                                                        fontSize: 16,
                                                        fontFamily: 'Poppins',
                                                        color: Color(0xDE000000)
                                                    ),
                                                  ),
                                                  Text('This is the most recent treatment you suggested',
                                                    style: TextStyle(fontSize: 12,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w400,
                                                        color: Color(0xFF575A61)),),

                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 18), 
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child:
                                              Container(
                                                width: 360, height: 225,
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF25CED1),
                                                    borderRadius: BorderRadius.all(Radius.circular(12))
                                                ),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                      padding: const EdgeInsets.fromLTRB(10, 14, 20, 0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 20,
                                                            backgroundImage:AssetImage('lib/assets/home image.png') ,
                                                          ),
                                                          SizedBox(width: 8.4),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text(
                                                                'Acne Issues Treatment',
                                                                style: TextStyle(fontWeight: FontWeight.w700,
                                                                    fontSize: 16,
                                                                    fontFamily: 'Poppins',
                                                                    color: Colors.white
                                                                ),
                                                              ),
                                                              Text('Parmeet Kaur',
                                                                style: TextStyle(fontSize: 14,
                                                                    fontFamily: 'Poppins',
                                                                    fontWeight: FontWeight.w400,
                                                                    color: Color(0xFFF4F4F4)),),

                                                            ],
                                                          ),
                                                          SizedBox(width: 6,),
                                                          Align(
                                                            alignment: Alignment.centerRight,
                                                            child: Icon(Icons.more_vert,
                                                              color: Colors.white,),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 7.5,),
                                                    Divider(
                                                      color: Color(0x26FFFFFF),
                                                      thickness: 1,
                                                      indent: 19,
                                                      endIndent: 19,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(20, 12, 10, 0),
                                                      child: Row(
                                                        children: [
                                                          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Icon(Iconsax.calendar_2,
                                                                size: 16,
                                                                color: Colors.white,),
                                                              SizedBox(width: 4,),
                                                              Text('From: 1 Oct 2023',
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    fontWeight: FontWeight.w400,
                                                                    fontFamily: 'Poppins',
                                                                    color: Colors.white
                                                                ),)
                                                            ],
                                                          ),
                                                          SizedBox(width: 55,),
                                                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Icon(Iconsax.clock,
                                                                size: 16,
                                                                color: Colors.white,),
                                                              SizedBox(width: 4,),
                                                              Text('To: 1 Nov 2023',
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    fontWeight: FontWeight.w400,
                                                                    fontFamily: 'Poppins',
                                                                    color: Colors.white
                                                                ),)
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height:10),
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(28, 0, 32, 0),
                                                child: LinearProgressIndicator(
                                                  value: 0.60, // 0.0 to 1.0 represents 0% to 100%
                                                  backgroundColor: Colors.grey.shade300, // Background color
                                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white), // Fill color
                                                ),
                                              ),
                                                    SizedBox(height: 5,),
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(20, 12, 0, 0),
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Image.asset('lib/assets/iconoir_trophy.png',
                                                              color: Colors.white,
                                                              width: 16, height: 16),
                                                              SizedBox(width: 4,),
                                                              Text('75% Completed',
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    fontWeight: FontWeight.w400,
                                                                    fontFamily: 'Poppins',
                                                                    color: Colors.white
                                                                ),)
                                                            ],
                                                          ),
                                                          SizedBox(width: 60),
                                                          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Image.asset('lib/assets/octicon_hourglass-24.png',
                                                                  color: Colors.white,
                                                                  width: 16, height: 16),
                                                              SizedBox(width: 4,),
                                                              Text('25% Remaining',
                                                                textAlign: TextAlign.justify,
                                                                style: TextStyle(
                                                                  color: Colors.white,
                                                                  fontSize: 12,
                                                                  fontFamily: 'Poppins',
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 0,),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 8),
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(20, 12, 0, 0),
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Image.asset('lib/assets/game-icons_medicines.png',
                                                                  color: Colors.white,
                                                                  width: 16, height: 16),
                                                              SizedBox(width: 4,),
                                                              Text('Aspirin dose 2tabs x3 days',
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    fontWeight: FontWeight.w400,
                                                                    fontFamily: 'Poppins',
                                                                    color: Colors.white
                                                                ),)
                                                            ],
                                                          ),
                                                          SizedBox(width: 73),
                                                          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Image.asset('lib/assets/mdi_clipboard-text-date-outline.png',
                                                                  color: Colors.white,
                                                                  width: 16, height: 16),
                                                              SizedBox(width: 4,),
                                                              Text('25 Oct 2023 for\n next treatment',
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                  color: Colors.white,
                                                                  fontSize: 12,
                                                                  fontFamily: 'Poppins',
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 0,),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10), 
                                            Column(
                                              children: [
                                                if (_showButton1)
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                          backgroundColor: Colors.white,
                                                          fixedSize: Size(300, 38),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(12)
                                                          ),
                                                          elevation: 0
                                                      ),
                                                      onPressed: (){
                                                        setState(() {
                                                          _showButton1 = false;
                                                          _showMiniContainers1 = true;
                                                        });
                                                      },

                                                      child:
                                                      const Align(
                                                        alignment: Alignment.center,
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Icon(Iconsax.add,
                                                              color: Color(0xFF25CED1),
                                                              size: 20,
                                                              weight: 0.5,
                                                            ),
                                                            Text('View other treatments',
                                                              textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w400,
                                                                  color: Color(0xFF25CED1),
                                                                  fontFamily: 'montserrat'
                                                              ),)
                                                          ],
                                                        ),
                                                      )),
                                                ),
                                                if (_showMiniContainers1)
                                                  ExpandableContent(),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                        ),
                      ),
                    )
                  ]
      ),
      ),
    );
  }

  }

class MyBottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 242,
      width: 335,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Calendar Section
             CalendarSection(),
            // Avail
            // able Time Slots Container
             Container(
                padding:EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(
                        'Available Time Slots',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        )
                      ),
                      SizedBox(height: 10),
                      CircularButtonsRow()
                    ]
                  ),
              ),

            // Appointments Reminder Container
            Container(
                padding:EdgeInsets.only(left: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(
                          'Remind Me Before',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          )
                      ),
                      SizedBox(height: 10),
                      Remind_Buttons()
                    ]
                ),
              ),

            SizedBox(height: 20),
            // Confirm Button Container
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size(295, 54)),
                backgroundColor: MaterialStateProperty.all(Color(0xFF25CED1)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0), // Rounded border
                )),
              ),
              onPressed: () {
                // Save the information and close the bottom sheet
                Navigator.of(context).pop();
              },
              child: Text('Confirm',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white
              )),
            ),
          ],
        ),
      ),
    );
  }
}


class ExpandableContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < 3; i++)
          MiniExpandableContainer(i: i),
      ],
    );
  }
}

class MiniExpandableContainer extends StatefulWidget {
  final int i;

  MiniExpandableContainer({required this.i});

  @override
  _MiniExpandableContainerState createState() => _MiniExpandableContainerState();
}

class _MiniExpandableContainerState extends State<MiniExpandableContainer> {
  bool isExpanded = false;

  void toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xFFD7D7D7),
          width: 1.0,
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 2),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Acne Test Reports ${widget.i}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF3F3D3C),
                        fontFamily: 'montserrat',
                      ),
                    ),
                    Text(
                      'By epidise skin care labs ${widget.i}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF717171),
                        fontFamily: 'montserrat',
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      toggleExpanded();
                    },
                    child: Icon(
                      isExpanded ? Iconsax.arrow_up_2 : Iconsax.arrow_down_1,
                      color: Color(0xFF717171),
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (isExpanded)
            Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
              child: Container(
                width: 310, height: 235,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Acne_Test()
              ),
            ),
        ],
      ),
    );
  }
}


class ExpandableContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < 3; i++)
          MiniExpandableContainer(i: i),
      ],
    );
  }
}


class MiniExpandableContainer1 extends StatefulWidget {
  final int i;

  MiniExpandableContainer1({required this.i});

  @override
  _MiniExpandableContainer1State createState() => _MiniExpandableContainer1State();
}

class _MiniExpandableContainer1State extends State<MiniExpandableContainer> {
  bool isExpanded1 = false;

  void toggleExpanded1() {
    setState(() {
      isExpanded1 = !isExpanded1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: 345,
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xFF25CED1),
          width: 1.0,
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 2),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Acne Test Reports ${widget.i}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF3F3D3C),
                        fontFamily: 'montserrat',
                      ),
                    ),
                    Text(
                      'By epidise skin care labs ${widget.i}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF717171),
                        fontFamily: 'montserrat',
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      toggleExpanded1();
                    },
                    child: Icon(
                      isExpanded1 ? Iconsax.arrow_up_2 : Iconsax.arrow_down_1,
                      color: Color(0xFF717171),
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (isExpanded1)
            Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
              child: Container(
                  width: 310, height: 235,
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child:
                    Container(
                      width: 360, height: 225,
                      decoration: BoxDecoration(
                          color: Color(0xFF25CED1),
                          borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 20, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage:AssetImage('lib/assets/home image.png') ,
                                ),
                                SizedBox(width: 8.4),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Acne Issues Treatment',
                                      style: TextStyle(fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          color: Colors.white
                                      ),
                                    ),
                                    Text('Parmeet Kaur',
                                      style: TextStyle(fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFF4F4F4)),),

                                  ],
                                ),
                                SizedBox(width: 6,),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(Icons.more_vert,
                                    color: Colors.white,),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 7.5,),
                          Divider(
                            color: Color(0x26FFFFFF),
                            thickness: 1,
                            indent: 19,
                            endIndent: 19,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 12, 10, 0),
                            child: Row(
                              children: [
                                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Iconsax.calendar_2,
                                      size: 16,
                                      color: Colors.white,),
                                    SizedBox(width: 4,),
                                    Text('From: 1 Oct 2023',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color: Colors.white
                                      ),)
                                  ],
                                ),
                                SizedBox(width: 55,),
                                Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Iconsax.clock,
                                      size: 16,
                                      color: Colors.white,),
                                    SizedBox(width: 4,),
                                    Text('To: 1 Nov 2023',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color: Colors.white
                                      ),)
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height:10),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(28, 0, 32, 0),
                            child: LinearProgressIndicator(
                              value: 0.60, // 0.0 to 1.0 represents 0% to 100%
                              backgroundColor: Colors.grey.shade300, // Background color
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.white), // Fill color
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 12, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset('lib/assets/iconoir_trophy.png',
                                        color: Colors.white,
                                        width: 16, height: 16),
                                    SizedBox(width: 4,),
                                    Text('75% Completed',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color: Colors.white
                                      ),)
                                  ],
                                ),
                                SizedBox(width: 60),
                                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('lib/assets/octicon_hourglass-24.png',
                                        color: Colors.white,
                                        width: 16, height: 16),
                                    SizedBox(width: 4,),
                                    Text('25% Remaining',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 12, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset('lib/assets/game-icons_medicines.png',
                                        color: Colors.white,
                                        width: 16, height: 16),
                                    SizedBox(width: 4,),
                                    Text('Aspirin dose 2tabs x3 days',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color: Colors.white
                                      ),)
                                  ],
                                ),
                                SizedBox(width: 73),
                                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('lib/assets/mdi_clipboard-text-date-outline.png',
                                        color: Colors.white,
                                        width: 16, height: 16),
                                    SizedBox(width: 4,),
                                    Text('25 Oct 2023 for\n next treatment',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ),
            ),
        ],
      ),
    );
  }
}


