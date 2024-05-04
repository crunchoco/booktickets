import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            children: [
              const SizedBox(height: 40,),
              Text("Tickets",style: Styles.headlineStyle1,),
              const SizedBox(height: 20,),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Prebious"),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[0],isColor: true,),
              ),
          const SizedBox(height: 1,),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
            margin: EdgeInsets.symmetric(horizontal: 15),
            child:  Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText:'Flutter DB' ,
                      secondText:'Passenger',
                      alignment: CrossAxisAlignment.start,isColor: false,
                    ),
                    AppColumnLayout(
                        firstText: '5221 364869',
                        secondText:'passport',
                        alignment: CrossAxisAlignment.end,isColor: false,
                    )
                  ],
                ),
                SizedBox(height: 20,),
                AppLayoutBuildWidget(sections: 15,isColor:false,width: 5,),
                SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText:'364738 28274478' ,
                      secondText:'Number of E-ticket',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'B2SG28',
                      secondText:'Booking code',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    )
                  ],
                ),
                SizedBox(height: 20,),
                AppLayoutBuildWidget(sections: 15,isColor:false,width: 5,),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/visa.png",scale: 9,),
                          Text("  *** 2486 ",style: Styles.headlineStyle3,)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Text("Payment method",style: Styles.headlineStyle4,)
                    ],
                  ),
                    AppColumnLayout(
                      firstText:'\$249.99' ,
                      secondText:'price',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                   ],
                )
              ],
            ) ,
          ),
              /*
              bar code
               */
              const SizedBox(height: 1,),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21)
                  )
                ),
                  margin: const EdgeInsets.only(left: 15,right: 15),
                  padding: const EdgeInsets.only(top:15, bottom: 15),
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                            child: BarcodeWidget(
                              barcode: Barcode.code128(),
                              data: 'https://www.youtube.com/watch?v=0E0un9RPG0w',
                              drawText: false,
                              color: Styles.textColor,
                              width: double.infinity,
                              height: 70,
                ),
              ),
            ),
              ),
              const SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[0],),
              ),
            ],
          ),
          Positioned(
            left: 22,
            top: 280,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2,)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: 22,
            top: 280,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2,)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
