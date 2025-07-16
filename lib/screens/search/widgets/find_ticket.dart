import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.findTicketColor,
      ),
      child: Center(
        child: Text("find tickets", style: AppStyles.textStyle.copyWith(color: Colors.white),),
      ),
    );
  }
}