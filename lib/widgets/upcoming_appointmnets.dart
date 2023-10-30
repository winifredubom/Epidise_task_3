import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
