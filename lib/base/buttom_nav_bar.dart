import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/screens/home/home_screen.dart';

class ButtomNavBar extends StatefulWidget{
  const ButtomNavBar({Key? key}) : super(key: key);
  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();

}

class _ButtomNavBarState extends State<ButtomNavBar>{
  final appScreens = [
    HomeScreen(),
    Center(child: const Text("Search")),
    Center(child: const Text("Tickets")),
    Center(child: const Text("Profile"))
  ];
  int _selectedItem = 0;
  void _changeItem(int index){
    setState(() {
      _selectedItem = index;
    });
    
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body:appScreens[_selectedItem],
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedItem,
        onTap: _changeItem,
        selectedItemColor: const Color.fromARGB(255, 110, 166, 194),
        unselectedItemColor: Colors.blueGrey,
        showSelectedLabels: false,
        items: [
          
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), activeIcon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), activeIcon: Icon(Icons.search_sharp) , label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), activeIcon: Icon(Icons.airplane_ticket_sharp) , label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(Icons.person_3), activeIcon: Icon(Icons.person_3_sharp) , label: "Profile"),
        ],
      ),
    );

  }
  
}