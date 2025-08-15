import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';
import 'package:ticket_app/base/widgets/headinng_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.only(top: 40, left: 20 , right: 20),
        children: [
          Row(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: 
                  AssetImage(
                    AppMedia.logo
                  ))
                ),
                height: 90,
                width: 90,
               
                
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadinngStyle(text: 'Book Tickets'),
                  Text("New-York", style: TextStyle(
                    fontSize: 14 , fontWeight: FontWeight.w500 , color: Colors.grey.shade400
                  ),),
                  SizedBox(height: 6.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    width: 120,
                    height: 30,
                    decoration: BoxDecoration(
                      color: AppStyles.profileStatueColor,
                      borderRadius: BorderRadius.circular(100),
                      // padding: 
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyles.profileTextColor,
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text("Premium Status", style: TextStyle(
                          color: AppStyles.profileTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 11
                        ),)
                      ],
                    ),
                  )

                ],
              ),
              Expanded(child: Container()),
              Text("Edit", style: TextStyle(
                color: AppStyles.primaryColor,
                fontWeight: FontWeight.w300
              ),),
              SizedBox(width: 8,)
            ],
          ),
          SizedBox(height: 8,),
          Divider(color: Colors.grey.shade400,)
        ],
      )
    );
  }
}