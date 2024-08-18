import 'package:book_your_trip/home/widgets/style.dart';
import 'package:book_your_trip/home/widgets/app%20column%20text%20layout.dart';
import 'package:book_your_trip/home/widgets/text%20style%20fourth.dart';
import 'package:book_your_trip/widgets/app%20layoutbuilder_widget.dart';
import 'package:book_your_trip/widgets/big%20circle%20dot.dart';
import 'package:book_your_trip/widgets/big%20dot.dart';
import 'package:book_your_trip/widgets/text%20style%20fourth.dart';
import 'package:book_your_trip/home/widgets/text%20style%20third.dart';
import 'package:flutter/material.dart';

import 'app layoutbuilder_widget.dart';
import 'big circle dot.dart';
import 'big dot.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView({super.key,required this.ticket, this.wholeScreen= false, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.85,
      height: 180,
      child: Container(
            margin: EdgeInsets.only(right:wholeScreen == true ? 0:16),
       child:  Column(
           children: [
             //blue part of the ticket
           Container(
             padding: const EdgeInsets.all(16),

             decoration: BoxDecoration(
               color: isColor==null? AppStyles.ticketblue:AppStyles.ticketColor,
               borderRadius: const BorderRadius.only(
                 topLeft: Radius.circular(21),
                 topRight: Radius.circular(21),
               ),),
             child: Column(
               children: [
                 // Show departure and destination with icons first line
                 Row(

                   children: [
                     TextStyleThird(text: ticket["from"]["code"], isColor:isColor,),
                     Expanded(child: Container()),
                     BigDot(isColor: isColor,),
                     //ticket flying icon
                     Expanded(
                         child: Stack(children: [
                       const SizedBox(
                           height:24,
                           child: AppLayoutBuilderWidget(randomDivider: 6,)

                       ),
                       Center(child: Transform.rotate(angle: 1.5,
                         child: Icon(Icons.local_airport_rounded,
                           color: isColor==null? Colors.white:AppStyles.PlaneSecondColor),),)

                     ])),

                     BigDot(isColor: isColor,),
                     Expanded(child: Container()),
                      TextStyleThird(text: ticket["to"]["code"],isColor: isColor,),
                   ],
                 ),
                 const SizedBox(height: 3,),
                 //show departure and destination names with time
                 Row(

                   children: [
                     SizedBox(
                       width: 100,
                       child: TextStyleFourth(text: ticket["from"]["name"],
                              isColor: isColor,),
                          ),
                     Expanded(child: Container()),
                     TextStyleFourth(text: ticket["flying_time"],
                     isColor: isColor,),

                         Expanded(child: Container()),
                         SizedBox(
                           width: 100,
                           child: TextStyleFourth(text: ticket["to"]["name"],
                             align: TextAlign.end,
                           isColor: isColor,),)

                     ]
                 ) ],
                 )
           ),
             //circles and dots
             Container(
               color: isColor==null?AppStyles.ticketOrange:AppStyles.ticketColor,
               child: Row(
                 children: [
               Bigcircle(isRight: false,
                 isColor: true,),
                   Expanded(child: AppLayoutBuilderWidget(randomDivider: 16,width: 6,
                   isColor: isColor,)),
                   Bigcircle(isRight: true, isColor: true,),
                 ],
               ),
             ),
             //orange part of the ticket
             Container(
                 padding: const EdgeInsets.all(16),

                 decoration: BoxDecoration(
                   color:isColor==null? AppStyles.ticketOrange:AppStyles.ticketColor,
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(isColor==null?21:0),bottomRight: Radius.circular(isColor==null?21:0),
                   ),),
                 child: Column(
                   children: [
                     // Show departure and destination with icons first line
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children:[
                           AppColumnTextLayout(
                             topText: ticket["date"],
                             bottomText: "DATE",
                             alignment: CrossAxisAlignment.start,
                             isColor: isColor,
                           ),
                             AppColumnTextLayout(
                               topText: ticket["departure_time"],
                               bottomText: "Departure time",
                               alignment: CrossAxisAlignment.center,
                               isColor: isColor,
                             ),
                             AppColumnTextLayout(
                               topText: ticket["number"].toString(),
                               bottomText: "Number",
                               alignment: CrossAxisAlignment.end,
                               isColor: isColor,
                             ),
                               ],),
                   ],
                 ),
    ),
    ],
    ),
    ),
    );


  }
}
