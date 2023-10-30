import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Acne_Test extends StatelessWidget {
  const Acne_Test({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
      Align(
        alignment: Alignment.topLeft,
        child:
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: const EdgeInsets.fromLTRB(0, 14, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start
                  ,
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
                              color: Colors.black
                          ),
                        ),
                        Text('Acne Problems',
                          style: TextStyle(fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Color(0x99000000)),),

                      ],
                    ),
                    SizedBox(width: 6,),
                  ],
                ),
              ),
              SizedBox(height: 7.5,),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 12, 10, 0),
                child: Row(
                  children: [
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Iconsax.calendar_2,
                          size: 16,
                          color: Color(0x99000000),),
                        SizedBox(width: 4,),
                        Text('Sunday, 12 June',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              color: Color(0x99000000)
                          ),)
                      ],
                    ),
                    SizedBox(width: 20,),
                    Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Iconsax.clock,
                          size: 16,
                          color: Color(0x99000000),),
                        SizedBox(width: 4,),
                        Text('11:00 - 12:00 AM',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              color: Color(0x99000000)
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
                          color: Color(0x99000000),),
                        SizedBox(width: 4,),
                        Text('MRI Scan ',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              color: Color(0x99000000)
                          ),)
                      ],
                    ),
                    SizedBox(width: 60,),
                    Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Iconsax.direct4,
                          size: 16,
                          color: Color(0x99000000),),
                        SizedBox(width: 4,),
                        Text('Inflammation\n detected',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Color(0x99000000),
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
                            backgroundColor: MaterialStateProperty.all(Color(0xFF25CED1)),
                            fixedSize: MaterialStateProperty.all(Size(135, 38)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12))))
                        ),
                        child:  Text(
                          'Give Suggestions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
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
                              color: Color(0xFF25CED1)
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
