import 'package:flutter/material.dart';
import 'package:ticket_app/base/buttom_nav_bar.dart';
import 'package:ticket_app/base/utils/all_routes.dart';
import 'package:ticket_app/screens/all_tickets.dart';
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
        AppRoutes.allTickets: (context){
          return AllTicketsScreen();
        },
        
      },
    );
  }
}
