import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTicketsScreen extends StatelessWidget {
  const AllTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
            Column(children: 
              ticketList.map((singleTicket)=> Container(
                margin: EdgeInsets.all(8),
                child: TicketView(data: singleTicket,fullScreen: true,))).toList()
            ,)
          )
        ],
      ),
    );
  }
}