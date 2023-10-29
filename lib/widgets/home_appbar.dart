import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_appbar extends StatelessWidget {
  const home_appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome,',
                style: TextStyle(fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Color(0xff8696BB)
                ),
              ),
              Text('Hi Dr. James',
                style: TextStyle(fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    color: Color(0x99000000)),),

            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.fromLTRB(0, 17, 0, 0),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('lib/assets/Frame.jpg'),
          ),
        ),
      ],
    );
  }
}
