import 'package:book_your_trip/home/widgets/style.dart';
import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  final bool? isColor;
   BigDot({super.key,this.isColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: isColor== null?Colors.white:AppStyles.dotColor),
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
