import 'package:flutter/material.dart';
import 'package:ticket_app/base/buttom_nav_bar.dart';
import 'package:ticket_app/base/utils/all_routes.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/search/search_screen.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';
void main() {
  print("Hello Dart!");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context)=>ButtomNavBar(),
        // AppRoutes.homePage: (context)=> SearchScreen(),
        AppRoutes.allTickets: (context){
          return AllTicketsScreen();
        },
        AppRoutes.ticketScreen: (context){
          return TicketScreen();
        },
        
      },
    );
  }
}
