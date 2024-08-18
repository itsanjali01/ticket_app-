import 'package:book_your_trip/home/widgets/text%20style%20fourth.dart';
import 'package:book_your_trip/home/widgets/text%20style%20third.dart';
import 'package:flutter/cupertino.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool?isColor;
  const AppColumnTextLayout({super.key,required this.topText,required this.bottomText, required this.alignment, this.isColor});
   @override
  Widget build(BuildContext context) {
    return Column(
      children:[
       TextStyleThird(text: topText, isColor: isColor,),
      const SizedBox(height: 5,),
       TextStyleFourth(text: bottomText, isColor: isColor,),
    ],
    );
  }
}
