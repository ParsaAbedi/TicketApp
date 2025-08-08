import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';

class TicketStaticCircle extends StatelessWidget {
  final bool pos;
  const TicketStaticCircle({super.key, required this.pos });

  @override
  Widget build(BuildContext context) {
    return Positioned(
            right: pos==false? 25: null,
            left: pos==true? 25: null,
            top: 251,
            child: Container(
              padding: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2.0),
              ),
            child: CircleAvatar(
              backgroundColor: AppStyles.textColor,
              maxRadius: 4.0,
            ),
          ));
  }
}