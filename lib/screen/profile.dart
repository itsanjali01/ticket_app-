import 'package:book_your_trip/base/media.dart';
import 'package:book_your_trip/home/widgets/app%20column%20text%20layout.dart';
import 'package:book_your_trip/home/widgets/style.dart';
import 'package:book_your_trip/home/widgets/text%20style%20third.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
 import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20
        ),
        children: [
          const Padding(padding: EdgeInsets.only(top: 40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //shows the logo
              Container(
                width: 120,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage(
                    AppMedia.logo
                  )

                  )
                ),
              ),
              SizedBox(width: 10,),
              //show thecolumn text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book Tickets",
                    style: AppStyles.headLineStyle1 ,),

                  Text(
                    "New-York",style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500,color: Colors.grey.shade500
                  ),),
                  SizedBox(height: 8,),
                  Container(
                     padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                    //decoration
                    decoration: BoxDecoration(
                      color: AppStyles.ProfileLocationcolor,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    //child->row->icon->text
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyles.profiletextcolor
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,),
                        ),
                        SizedBox(width: 5,),
                        Text("Premimum status",style: TextStyle(
                          color: AppStyles.profiletextcolor,fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                  )
                ],
              ),
              Expanded(child: Container()),
              Text(
                  "Edit",
                style: TextStyle(
                  color: AppStyles.primaryColor,fontWeight: FontWeight.w500
                ),
              )
              
            ],
          ),
          SizedBox(height: 8,),
          //divider
          Divider(color: Colors.grey.shade300,),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyles.primaryColor,
                        size: 27,
                      ),
                    ),
                    SizedBox(width: 12,),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextStyleThird(text: 'You\'v got a new award',isColor: null,),
                        Text('You have 95 flights in a year',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.8),
                        ),),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                top: -40,
                right: -45,
                  child: Container(
                    padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18,color: Color(0xFF264CD2))
                  ),
                
              ))
            ],
          ),
          SizedBox(height: 25,),
          Text("Accumulated miles", style: AppStyles.headLineStyle2,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppStyles.bgcolor
            ),
            child: Column(
              children: [
                const SizedBox(height: 15,),
                Text("192802",style: TextStyle(
                  fontSize: 45, color: AppStyles.textColor,fontWeight: FontWeight.w600
                ),),
                const SizedBox(height: 15,),
                //row ->text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "16th july",
                      style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                //divider
                Divider(color: Colors.grey.shade300),
                //row ->column

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      AppColumnTextLayout(
                          topText: "23 042",
                          bottomText: "Miles",
                          isColor: false,
                          alignment: CrossAxisAlignment.start
                      ),
                    AppColumnTextLayout(
                        topText: "Airline CO",
                        bottomText: "Received from",
                        isColor: false,
                        alignment: CrossAxisAlignment.start
                    ),

                          ],
                      ),
                //row ->column
                const SizedBox(height: 50,),
                //divider
                Divider(color: Colors.grey.shade300),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                        topText: "24",
                        bottomText: "Miles",
                        isColor: false,
                        alignment: CrossAxisAlignment.start
                    ),
                    AppColumnTextLayout(
                        topText: "McDoanal's",
                        bottomText: "Received from",
                        isColor: false,
                        alignment: CrossAxisAlignment.start
                    ),

                  ],
                ),
                //row ->column
                const SizedBox(height: 50,),
                //divider
                Divider(color: Colors.grey.shade300),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                        topText: "52 340",
                        bottomText: "Miles",
                        isColor: false,
                        alignment: CrossAxisAlignment.start
                    ),
                    AppColumnTextLayout(
                        topText: "London",
                        bottomText: "Received from",
                        isColor: false,
                        alignment: CrossAxisAlignment.start
                    ),

                  ],
                ),
                    //text
                SizedBox(height: 50,),
                 InkWell(
                   onTap: (){
                     print("tapped");
                   },
                   child:     Text("How to get more miles",
                       style: AppStyles.textStyle.copyWith(
                         color: AppStyles.primaryColor,
                         fontWeight: FontWeight.w500,
                         fontSize: 20,
                       ))
                 )
                  ],
                ),
                //text
    ),
   ] ),
    );
  }
}

