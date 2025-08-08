import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_column_layout.dart';
import 'package:ticket_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/ticket/widgets/ticket_static_circle.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {

  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {

    var args = ModalRoute.of(context)!.settings.arguments as Map;
    print("passed index is: ${args["index"]}");
    ticketIndex = args["index"];
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
        title: Text("Tickets", style: AppStyles.headLineStyle1,),
        backgroundColor: AppStyles.bgColor,
      ),
      backgroundColor: AppStyles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [

              AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              SizedBox(height: 20),
              Container(
                // color: Colors.red,
                padding: EdgeInsets.only(left: 16.0),
                child: TicketView(data: ticketList[ticketIndex], isColored: false),
              ),
              SizedBox(height: 1),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyles.ticketWhite,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "FlutterDB",
                          secondText: 'Passanger',
                          alignment: CrossAxisAlignment.start,
                          isColored: true,
                        ),
                        AppColumnLayout(
                          firstText: "5551 2227",
                          secondText: 'passport',
                          alignment: CrossAxisAlignment.end,
                          isColored: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AppLayoutBuilder(randomDivider: 15, width: 5, isColored: false),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "112387964",
                          secondText: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                          isColored: true,
                        ),
                        AppColumnLayout(
                          firstText: "5551 2227",
                          secondText: 'Booking Code',
                          alignment: CrossAxisAlignment.end,
                          isColored: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AppLayoutBuilder(randomDivider: 15, width: 5, isColored: false),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 13,
                                  child: Image.asset(AppMedia.visaCard),
                                ),
                                Text(" *** 1234", style: AppStyles.headLineStyle3),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Payment Method",
                              style: AppStyles.headLineStyle4.copyWith(
                                color: AppStyles.circleColor,
                              ),
                            ),
                          ],
                        ),
                        AppColumnLayout(
                          firstText: "\$235.0",
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColored: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: AppStyles.ticketWhite,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)
                  ),
                ),
                child: Container(
                  // padding: EdgeInsets.all(8.0),
                  
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child:  Center(child: Text("flutter is the best",style: AppStyles.headLineStyle4,)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                // color: Colors.red,
                padding: EdgeInsets.only(left: 16.0),
                child: TicketView(data: ticketList[ticketIndex]),
              ),
            ],
          ),
          TicketStaticCircle(pos: true),
          TicketStaticCircle(pos: false),
          
        ],
      ),
    );
  }
}
