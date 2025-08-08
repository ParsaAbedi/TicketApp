import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';
import 'package:ticket_app/base/utils/all_routes.dart';
import 'package:ticket_app/base/widgets/app_double_text_widget.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_ticket.dart';
import 'package:ticket_app/screens/search/widgets/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          Text(
            "What Are\nYou Looking For?",
            style: AppStyles.headLineStyle1.copyWith(color: Colors.black),
          ),
          SizedBox(height: 20),
          AppTicketTabs(firstTab: "Flights", secondTab: "Hotles",),
          SizedBox(height: 25),
          AppTextIcon(
            myText: "Departure",
            myIcon: Icons.flight_takeoff_rounded,
          ),
          SizedBox(height: 20),
          AppTextIcon(myText: "Arrival", myIcon: Icons.flight_land_rounded),
          SizedBox(height: 25),
          FindTicket(),
          SizedBox(height: 40),
          AppDoubleText(
            bigText: "Upcoming Flights",
            smallText: "view all",
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          SizedBox(height: 25),
          TicketPromotion(),
        ],
      ),
    );
  }
}
