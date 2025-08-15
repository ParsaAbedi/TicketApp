import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';

class HeadinngStyle extends StatelessWidget {
  final String text;
  const HeadinngStyle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
                        text,
                        textAlign: TextAlign.start,
                        style: AppStyles.headLineStyle1,
                      );
  }
}