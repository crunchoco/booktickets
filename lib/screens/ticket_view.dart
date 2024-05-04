import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic>ticket;
  final bool? isColor;
  const TicketView({super.key,required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {

    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 173,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            顯示藍色票卡
             */
            Container(
              decoration:  BoxDecoration(
                color: isColor==null? Color(0xFF526799):Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(ticket['from']['code'],style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3,
                    ),
                    Expanded(child: Container()),
                    ThickContainer(isColor: true,),
                    Expanded(child: Stack(
                      children: [
                        const SizedBox(
                          height: 24,
                          child: AppLayoutBuildWidget(sections: 6,isColor: false,)
                        ),
                        Center(child: Transform.rotate(angle: 1.5,child: Icon(Icons.local_airport_rounded,color: isColor==null? Colors.white:Color(0xFF8ACCF7),),)),
                      ],
                    )),
                    ThickContainer(isColor: true,),
                    Expanded(child: Container()),
                    Text(ticket['to']['code'],style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white,):Styles.headlineStyle3),
                  ],
                ),
                SizedBox(height :3),
                Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                         width: 100,child: Text(ticket['from']['name'],style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4),
                        ),
                        Text(ticket['flying_time'],style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4),
                        SizedBox(
                          width: 100,child: Text(ticket['to']['name'],textAlign:TextAlign.end,style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4),
                        )
                      ],
                    )
                  ],
                )
            ),
            /*
            顯示橘色票卡上半部
             */
            Container(
              color: isColor==null? Styles.orangeColor:Colors.white,
              child:  Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null? Colors.grey.shade200:Colors.white,
                        borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      ),
                    ),
                  ),
                  const Expanded(child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: AppLayoutBuildWidget(sections: 15, isColor: false,)
                  )),
                   SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor==null? Colors.grey.shade200:Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*
            顯示橘色票卡下半部
             */
            Container(
              decoration:  BoxDecoration(
                  color: isColor==null? Styles.orangeColor:Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null? 21:0),
                      bottomRight: Radius.circular(isColor==null? 21:0))
              ),
              padding: const EdgeInsets.only(left: 14,top: 10,right: 16,bottom: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(ticket['date'],style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3,),
                       SizedBox(height: 5,),
                       Text("Date",style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4,),
                     ],
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Text(ticket['departure_time'],style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3,),
                       SizedBox(height: 5,),
                       Text("Departure time",style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4,),
                     ],
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       Text(ticket['Number'].toString(),style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3,),
                       SizedBox(height: 5,),
                       Text("Number",style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4,),
                     ],
                   ),
                 ],
               ),

            )
          ],
        ),
      ),
    );
  }
}
