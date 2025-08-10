import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/App_styles.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});
  

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  var isExpanded = false;
    _toggleExpanded(){
      
      setState(() {
        isExpanded = !isExpanded;
      });

      print('set state to $isExpanded');
    }
  @override
  Widget build(BuildContext context) {
    

    var myTextWidget = Text(
      widget.text,
      maxLines: isExpanded? null:1,
      overflow: isExpanded? TextOverflow.visible: TextOverflow.ellipsis,
    );
    var showWidget = Text(
      isExpanded?'less':'more',
      style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor)
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myTextWidget,
        GestureDetector(
          onTap: () {
            _toggleExpanded();
          },
          child: showWidget,
        ),
        
      ],
    );
  }
}