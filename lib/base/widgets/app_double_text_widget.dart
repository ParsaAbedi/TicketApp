import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';
import 'package:ticket_app/base/utils/all_routes.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  
  const AppDoubleText({
    super.key,
    required this.smallText,
    required this.bigText,
    required this.func,
  });
  final String smallText;
  final String bigText;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle2),
        InkWell(
          onTap: func,
          child: Text(smallText, style: AppStyles.textStyle),
        ),
      ],
    );
  }
}
