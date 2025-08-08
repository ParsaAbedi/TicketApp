import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';
import 'package:ticket_app/base/utils/all_routes.dart';


class HotelGridView extends StatelessWidget {
  final Map<String,dynamic> data;
  final index;
  const HotelGridView({super.key, required this.data, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        print("Hotel number $index tapped!");
        Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments: {
          "index":index
        });
      },
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(right: 8),
        // width: size.width * 0.6,
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: AppStyles.primaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                // height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: AppStyles.primaryColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${data["image"]}"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                data["place"],
                style: AppStyles.headLineStyle2.copyWith(
                  color: AppStyles.kakiColor,
                ),
              ),
            ),
            // SizedBox(height: 5),
      
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    data["destination"],
                    style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                ),
                SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "\$${data["price"]}/night",
                    style: AppStyles.headLineStyle4.copyWith(
                      color: AppStyles.kakiColor,
                    ),
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
