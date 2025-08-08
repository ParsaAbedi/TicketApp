import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';

class BigDot extends StatelessWidget {
  bool? isColored;
  BigDot({super.key, this.isColored});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5,color:isColored==null? Colors.white: AppStyles.dotColor),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}