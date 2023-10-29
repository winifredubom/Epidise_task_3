import 'package:flutter/cupertino.dart';

import 'dates.dart';

class Date_section extends StatelessWidget {
  const Date_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: DateScroll(),
    );
  }
}
