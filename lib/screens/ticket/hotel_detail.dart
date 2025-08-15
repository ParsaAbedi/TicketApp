import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/ticket/widgets/expandable_text.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int hotelIndex = 0;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    print("passed index is: ${args["index"]}");
    hotelIndex = args["index"];
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppStyles.primaryColor,
                  ),
                  child: Icon(Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Positioned.fill(
                  child: Image.asset("assets/images/${hotelList[hotelIndex]["image"]}",
                    fit: BoxFit.cover,
                  ),
                  
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5)
                    ),
                    child: Text(hotelList[hotelIndex]["place"],
                      style: TextStyle(color: Colors.white, 
                      fontSize: 24.0,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: AppStyles.primaryColor,
                          offset: Offset(2.0, 2.0)
                        )
                      ]),
                      
                    ),
                    
                  ),
                )
                ]
              ),
              
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpandableText(text: hotelList[hotelIndex]['detail']),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('More images', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotelList[hotelIndex]["images"].length,
                    itemBuilder:(contect, imaegIndex){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/${hotelList[hotelIndex]["images"][imaegIndex]}"
                        ),
                      );
                    }  ,
                  ),
                )
            
            ],
          ))
        ],
      ),
    
    );
  }
}