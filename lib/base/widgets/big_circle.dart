import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final bool isRight ;
  bool? isColored;
  BigCircle({super.key , required this.isRight, this.isColored});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColored==null? Colors.white: Colors.grey.shade200,
                        borderRadius: isRight==true? BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ):BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  );
  }
}