import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';

class AppTextIcon extends StatelessWidget {
  final IconData myIcon;
  final String myText;
  const AppTextIcon({super.key, required this.myIcon , required this.myText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        children: [
          Icon(myIcon, color: AppStyles.planeColor,),
          SizedBox(width: 10,),
          Text(myText, style: AppStyles.textStyle,)
        ],
      ),
    );
  }
}