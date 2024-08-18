import 'package:barcode_widget/barcode_widget.dart';
import 'package:book_your_trip/Search/app%20ticket%20tabs.dart';
import 'package:book_your_trip/home/widgets/app%20layoutbuilder_widget.dart';
import 'package:book_your_trip/home/widgets/style.dart';
import 'package:book_your_trip/home/widgets/ticket%20view.dart';
import 'package:book_your_trip/home/widgets/ticketpositioncircle.dart';
import 'package:book_your_trip/utils/all_json.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../base/media.dart';
import '../home/widgets/app column text layout.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex=0;
   @override
  void didChangeDependencies() {
     if( ModalRoute.of(context)!.settings.arguments != null){
       var args = ModalRoute.of(context)!.settings.arguments as Map;
       print("passed index ${args["index"]}");
       ticketIndex = args["index"];
     }

    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppStyles.bgcolor,
           title: const Center(child: Text("Tickets")),

        ),
        body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              SizedBox(height: 20,),
              const AppTicketTabs(
                firstTab: "Upcoming", SecondTab: "Previous",
              ),

              const SizedBox(height: 20,),
              // white and black ticket
              Container(
                 padding: EdgeInsets.only(left: 16),
                  child: TicketView(ticket: ticketList[ticketIndex],isColor: true,)),
              const SizedBox(height: 1,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                color: AppStyles.ticketColor,
                child:  Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "Flutter DB",
                          bottomText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "5221 36869",
                          bottomText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const AppLayoutBuilderWidget(randomDivider: 15, width: 5,isColor: false,),
                    const SizedBox(height: 20,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "2465 658494045865",
                          bottomText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "B46859",
                          bottomText: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const AppLayoutBuilderWidget(randomDivider: 15, width: 5,isColor: false,),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(AppMedia.visa,scale: 11,),
                                Text("*** 2462",style: AppStyles.headLineStyle3,)
                              ],
                            ),
                            Text("Payment mathod",style: AppStyles.headLineStyle4,)
                          ],
                        ),

                        const AppColumnTextLayout(
                          topText: "\$299.99",
                          bottomText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
           SizedBox(height: 1,),
          // bottom of the ticket detail system
              Container(
                margin: EdgeInsets.symmetric(horizontal:15 ),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: AppStyles.ticketColor,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  )
                ),
                   child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                 child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
               child: BarcodeWidget(
                    height: 70,
                barcode: Barcode.code128(),
             data:'https://www.air.irctc.co.in/' ,
              drawText: false,
           color: AppStyles.textColor,
           width: double.infinity,
              ),
              )
              ),
              ),
              SizedBox(height: 20,),
              // colorful ticket
              Container(
                  padding: EdgeInsets.only(left: 16),
                  child: TicketView(ticket: ticketList[ticketIndex],),)
              ],
              ),
          Ticketpositioncircle(pos:true,),
          Ticketpositioncircle(pos:null,),
        ],
      ));
  }
}
