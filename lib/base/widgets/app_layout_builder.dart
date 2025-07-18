import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int randomDivider;
  final double width;
  const AppLayoutBuilder({super.key,  required this.randomDivider ,this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context , BoxConstraints constraints){
      return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: 
          List.generate((constraints.constrainWidth()/randomDivider).floor(),(index) => SizedBox(
            width: width,
            height: 1,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white
              )
              ),
          )),
        
        );
    });
  }
}