import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign align;
  bool? isColored;
  TextStyleFourth({super.key , required this.text , this.align = TextAlign.start , this.isColored});

  @override
  Widget build(BuildContext context) {
    return Text(
                        text,
                        textAlign: align,
                        style: isColored==null?  AppStyles.headLineStyle4.copyWith(
                          color: Colors.white ,
                        ): AppStyles.headLineStyle4,
                      );
  }
}