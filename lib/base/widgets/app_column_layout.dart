import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  const AppColumnLayout({super.key , required this.firstText , required this.secondText , required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
                        crossAxisAlignment: alignment,
                        children: [
                          TextStyleFourth(text: firstText),
                          const SizedBox(height: 5),
                          TextStyleFourth(text: secondText),
                        ],
                      );
  }
}