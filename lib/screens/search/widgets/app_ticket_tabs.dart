import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key, required this.firstTab , required this.secondTab});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppStyles.searchScreenWhite,
      ),
      child: Row(
        
        children: [
         AppTabs(text: firstTab, direction: false,),
          AppTabs(text: secondTab, direction: true, tabColor: true,),

        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({super.key, required this.text, required this.direction , this.tabColor = false});
  final bool tabColor;
  final String text;
  final bool direction;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
            decoration: BoxDecoration(
              borderRadius: direction==false? BorderRadius.horizontal(left: Radius.circular(50)): BorderRadius.horizontal(right: Radius.circular(50)),
              color: tabColor==false? Colors.white: Colors.transparent,
            ),
            padding: EdgeInsets.symmetric(vertical: 7),
            width: size.width * .44,
            child: Center(child: Text(text)),
          );
  }
}