import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          const SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/book_ticket.png")
                  )
                ),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets",style: Styles.headlineStyle1,),
                  SizedBox(height: 2,),
                  Text("New-York",style: TextStyle(
                    fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey.shade500
                  ),),
                  SizedBox(height: 8,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFFEF4F3)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled,color: Colors.white,size: 15,),
                        ),
                        SizedBox(width: 5,),
                        const Text("Premium status",style: TextStyle(
                          color: Color(0xFF526799),fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print("You are tapped");
                    },
                      child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor,fontWeight: FontWeight.w300 )))
                ],
              )
            ],
          ),
          const SizedBox(height: 8,),
          Divider(color: Colors.grey.shade300,),
          const SizedBox(height: 8,),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18)
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18,color: Color(0xFF264CD2))
                ),
              ),),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_circle_filled,color: Styles.primaryColor,size: 27,),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 25,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You\'v got a new award",style: Styles.headlineStyle2.copyWith(
                          fontWeight: FontWeight.bold, color:Colors.white
                          ),
                        ),
                        Text("You have 95 flights in a year",style: Styles.headlineStyle2.copyWith(
                            fontWeight: FontWeight.bold, color:Colors.white.withOpacity(0.9,),fontSize: 16
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 20,),
          Text("Accumulated miles",style: Styles.headlineStyle2,),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Styles.bgcolor,
              boxShadow:[
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 1,
                  spreadRadius: 1,
                )
              ]
            ),
            child: Column(
              children: [
                SizedBox(height: 15,),
                Text("192802",style: TextStyle(fontSize: 45,color: Styles.textColor,fontWeight: FontWeight.w600),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued",style: Styles.headlineStyle4.copyWith(fontSize: 16),),
                    Text("11 June 2022",style: Styles.headlineStyle4.copyWith(fontSize: 16),),
                  ],
                ),
                Divider(color: Colors.grey.shade300,),
                SizedBox(height: 4,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    AppColumnLayout(
                      firstText: '23 042',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'Airline CO',
                      secondText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                SizedBox(height: 12,),
                AppLayoutBuildWidget(sections: 12,isColor: false,),
                SizedBox(height: 12,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    AppColumnLayout(
                      firstText: '24',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'taiwan',
                      secondText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                AppLayoutBuildWidget(sections: 12,isColor: false,),
                SizedBox(height: 12,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    AppColumnLayout(
                      firstText: '52 340 ',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'Exuma',
                      secondText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          Center(
            child: Text(
              "How to get more miles",
              style: Styles.textStyle.copyWith(
                color: Styles.primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
