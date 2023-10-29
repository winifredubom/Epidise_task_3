import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_3/widgets/dates.dart';
import 'package:iconsax/iconsax.dart';
import '../../widgets/date_section.dart';
import '../../widgets/home_appbar.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
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
                                            onPressed: () {},
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
                                            Align(
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
                                            SizedBox(height: 16,),
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
                                                            child: Column(
                                                              mainAxisSize: MainAxisSize.min,
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                const Padding(
                                                                  padding: const EdgeInsets.fromLTRB(10, 14, 10, 0),
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
                                                                  padding: const EdgeInsets.fromLTRB(20, 12, 10, 0),
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
                                                                        padding: const EdgeInsets.fromLTRB(10, 0, 21, 0),
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
                                                                  padding: const EdgeInsets.fromLTRB(20, 12, 10, 0),
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
                                                                        padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
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
                                                      SizedBox(height: 5,),
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
                                                            onPressed: (){},

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
                                                      )
                                                    ],
                                                  ),
                                               ),
                                            SizedBox(height: 40,),
                                           Column(
                                                children: [
                                                Align(
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
                                                  onPressed: (){},

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

class upcoming_appointments extends StatelessWidget {
  const upcoming_appointments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
      Align(
      alignment: Alignment.topLeft,
      child:
      Container(
          width: 252, height: 220,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Parmeet Kaur',
                        style: TextStyle(fontWeight: FontWeight.w700,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            color: Colors.white
                        ),
                      ),
                      Text('Acne Problems',
                        style: TextStyle(fontSize: 12,
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
              padding: const EdgeInsets.fromLTRB(10, 12, 10, 0),
              child: Row(
                children: [
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Iconsax.calendar_2,
                      size: 16,
                      color: Colors.white,),
                      SizedBox(width: 4,),
                      Text('Sunday, 12 June',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: Colors.white
                      ),)
                    ],
                  ),
                  SizedBox(width: 5,),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Iconsax.clock,
                        size: 16,
                        color: Colors.white,),
                      SizedBox(width: 4,),
                      Text('11:00 - 12:00 AM',
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
            SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 12, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Iconsax.scan,
                        size: 16,
                        color: Colors.white,),
                      SizedBox(width: 4,),
                      Text('MRI Scan ',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            color: Colors.white
                        ),)
                    ],
                  ),
                  SizedBox(width: 45,),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Iconsax.direct4,
                        size: 16,
                        color: Colors.white,),
                      SizedBox(width: 4,),
                      Text('Inflammation\n detected',
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
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.fromLTRB(11, 0, 12, 11),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextButton(
                          onPressed: (){},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            fixedSize: MaterialStateProperty.all(Size(110, 38)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12))))
                          ),
                          child:  Text(
                              'Accept',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF25CED1),
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                      OutlinedButton(
                          onPressed: (){},
                          child: Text('Reject',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'montserrat',
                                color: Colors.white
                            ),),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                          ),
                          side: MaterialStateProperty.all<BorderSide>(
                            BorderSide(color: Colors.white, width: 1),
                          ),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )),
                          fixedSize: MaterialStateProperty.all(Size(110, 38)),
                          elevation: MaterialStateProperty.all<double>(16),
                          shadowColor: MaterialStateProperty.all<Color>(Color(0x1A0F274A)),
                        ),
                           )
                    ],
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

