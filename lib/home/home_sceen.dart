import 'package:book_your_trip/base/media.dart';
import 'package:book_your_trip/home/widgets/Approutes.dart';
import 'package:book_your_trip/home/widgets/heading%20text%20style.dart';
import 'package:book_your_trip/home/widgets/style.dart';
import 'package:book_your_trip/home/widgets/app_double_text.dart';
import 'package:book_your_trip/home/widgets/ticket%20view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../utils/all_json.dart';
import 'hotel.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: AppStyles.bgcolor ,
      body: ListView(
        children: [
          const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Good Morning",
                                  style: AppStyles.headLineStyle3),
                              const SizedBox(height: 5,),
                              Text("Book Tickets",
                                  style: AppStyles.headLineStyle1),
                              const HeadingText(text: "Book Tickets",isColor:false ,),
                                       ],
                                     ),
                                   Container(
                                     width: 50,
                                     height: 50,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       image: const DecorationImage(
                                           image:AssetImage(AppMedia.logo))
                                     ),
                                   ),
                                 ]
                                                           ),
                                  const SizedBox(height: 25,),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal:12, vertical: 12),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFFF4f6fD),
                                    ),
                                    child:
                                      const Row(
                                        children: [
                                          Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205),),
                                          Text("Search")
                                        ],
                                          ),

                                  ),
                                  const SizedBox(height: 40,),
                                  AppDoubleText(
                                    bigText: 'Upcoming Flights',
                                    smallText: 'View All' ,
                                    func: () =>Navigator.pushNamed(context,AppRoutes.allTickets),
                                     ),
                                  const SizedBox(height: 20,),
                                   SingleChildScrollView(
                                     scrollDirection: Axis.horizontal,
                                       child: Row(
                                         children: ticketList.take(2).map((singleTicket) =>
                                             GestureDetector(
                                                     onTap: (){
                                                       var index = ticketList.indexOf(singleTicket);
                                                       print("i am tapped on the ticket $index");
                                                       Navigator.pushNamed(context, AppRoutes.ticketScreen,
                                                           arguments: {"index": index});
                                                     },
                                                 child: TicketView(ticket: singleTicket,))
                                       ).toList(), )
                                   ),
                                  const SizedBox(height: 40,),
                                  AppDoubleText(
                                    bigText: 'Hotels',
                                    smallText: 'View All' ,
                                    func: (){
                                      Navigator.pushNamed(context,AppRoutes.allHotels);
                                    },
                                  ),
                                  const SizedBox(height: 20,),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: hotelList.take(2)
                                          .map((singleHotel) => GestureDetector(
                                        onTap: (){
                                          var index = hotelList.indexOf(singleHotel);
                                          Navigator.pushNamed(context, AppRoutes.HotelDetail,arguments: {
                                            "index" : index
                                          });
                                        },
                                          child: Hotel(hotel:singleHotel))) .toList(),
                                    )

                                  ),

                                      ],
                    ),
                  ),

               ],
    ));
        }
}

