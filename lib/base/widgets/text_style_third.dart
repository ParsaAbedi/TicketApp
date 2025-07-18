import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextStyleThird({super.key , required this.text , this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
                        text,
                        textAlign: align,
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      );
  }
}