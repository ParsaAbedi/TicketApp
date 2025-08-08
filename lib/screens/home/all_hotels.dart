import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/home/widgets/hotel_grid_view.dart';

class AllHotelsScreen extends StatelessWidget {
  const AllHotelsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotels', style: AppStyles.headLineStyle1,),
        backgroundColor: AppStyles.bgColor,
      ),

      body: Container(
        margin: EdgeInsets.only(left: 8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: .9,
        
              ), 
            itemCount: hotelList.length,
            itemBuilder: (context,index) {
              var singleHotel = hotelList[index];
              return HotelGridView(data: singleHotel, index: index,);
            } ),
      ),
      
    );
  }
}