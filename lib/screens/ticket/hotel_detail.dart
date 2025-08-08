import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';

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
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Hotel"),
              background: Image.asset("assets/images/${hotelList[hotelIndex]["image"]}"),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Hi this is just a dummy text to fill the screen and make this app more beatiful! later on critics can add their own comments here too! Wish you luck", style: AppStyles.headLineStyle3,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('More images', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder:(contect, index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network("https://via.placeholder.com/200x150"),
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