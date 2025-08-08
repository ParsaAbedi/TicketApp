import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';
import 'package:ticket_app/base/widgets/app_column_layout.dart';
import 'package:ticket_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> data;
  final bool fullScreen;
  final bool? isColored;
  const TicketView({super.key, required this.data, this.fullScreen=false, this.isColored });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 176,
      child: Container(
        margin: EdgeInsets.only(right:fullScreen==false? 16:0),
        // color: Colors.blue,
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColored==null? AppStyles.ticketBlue: AppStyles.ticketWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextStyleThird(text: data["from"]["code"], isColored: isColored,),
                      Expanded(child: Container()),
                      BigDot(isColored: isColored,),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilder(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColored==null? Colors.white: AppStyles.planeColor_2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(isColored: isColored,),
                      Expanded(child: Container()),
                      TextStyleThird(text: data["to"]["code"], isColored: isColored,),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: data["from"]["name"] , isColored: isColored,),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: data["flying_time"] , isColored: isColored,),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: data["to"]["name"] , align: TextAlign.end, isColored: isColored,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //middle part of the ticket
            Container(
              height: 20,
              color: isColored==null? AppStyles.ticketOrange: AppStyles.ticketWhite,
              child: Row(
                children: [
                  BigCircle(isRight: false, isColored: isColored,),
                  Expanded(
                    child: AppLayoutBuilder(
                      randomDivider: 20,
                      width: 6,
                      isColored: isColored,
                      ),
                  ),
                  BigCircle(isRight: true, isColored: isColored,),
                ],
              ),
            ),
            //orange part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColored==null? AppStyles.ticketOrange: AppStyles.ticketWhite,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColored==null? 21:0),
                  bottomRight: Radius.circular(isColored==null? 21:0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: data["date"], secondText: 'Date' , alignment: CrossAxisAlignment.start, isColored: isColored,),
                      AppColumnLayout(firstText: data["departure_time"], secondText: 'Departure Time' , alignment: CrossAxisAlignment.center,isColored: isColored,),
                      AppColumnLayout(firstText: data["number"].toString(), secondText: 'Number' , alignment: CrossAxisAlignment.end,isColored: isColored,),
                    ],
                  ),
                  

                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
