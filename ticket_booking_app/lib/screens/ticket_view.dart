import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/thick_container.dart';
class TicketView extends StatelessWidget {
  final Map<String, dynamic>ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, required this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin:  EdgeInsets.only(left:AppLayout.getHeight(16)),
       child: Column(
         children: [
           //SHOWING BLUE PART OF THE CARD/TICKET
           Container(
            decoration: BoxDecoration(
              color: isColor == null?  Color(0xFF526799): Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppLayout.getHeight(21)),
                topRight: Radius.circular(AppLayout.getHeight(21)),
              )
            ),
             padding: EdgeInsets.all(AppLayout.getHeight(16)),
             child: Column(
               children: [

                 Row(
                     children: [
                       Text(ticket['from']['code'],
                        style:isColor== null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
                       ),
                       Expanded(child: Container()),
                       ThickContainer(isColor:true),
                       Expanded(child: Stack(
                         children: [
                           SizedBox(
                             height: AppLayout.getHeight(24),
                             child: LayoutBuilder(
                               builder: (BuildContext context, BoxConstraints constraints) {
                                 return Flex(
                                   direction:Axis.horizontal ,
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   mainAxisSize: MainAxisSize.max,
                                   children:  List.generate( (constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                     width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                     color: isColor == null ? Colors.white :Colors.grey.shade300  ,
                                   ),),
                                   )),
                                 );
                               },
                             ),
                           ),
                           Center(child: Transform.rotate(angle: 1.5,child: Icon(Icons.local_airport_rounded,color:isColor == null?  Colors.white:Color(0xFF8ACCF7))),
                       )  ]
                       )),

                       ThickContainer(isColor: true),
                       Expanded(child: Container()),
                       Text(ticket['to']['code'],
                         style: isColor ==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3 ,
                       ),
                     ],
                 ),
                 const Gap(3),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     SizedBox(
                       width: AppLayout.getWidth(100),
                       child: Text(ticket['from']['name'],style: isColor == null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle3,),

                     ),
                     Text(ticket['flying-time'], style:isColor == null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,),
                     SizedBox(
                       width:AppLayout.getWidth(100),
                       child: Text(ticket['to']['name'],textAlign: TextAlign.end,style:isColor == null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle3,),

                     ),
                   ],
                 ),
               ],
             ),
           ),
         //  SHOWING ORANGE PART OF THE CARD/TICKET
           Container(
             color: Styles.orangeColor,
             child: Row(
               children: [
                 SizedBox(
                   height: AppLayout.getHeight(20),
                   width: AppLayout.getWidth(10),
                   child: DecoratedBox(
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.only(
                         topRight: Radius.circular(10),
                         bottomRight: Radius.circular(10),
                       )
                     ),
                   ),
                 ),
                 Expanded(child:Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: LayoutBuilder(
                     builder: (BuildContext context, BoxConstraints constraints) {
                     return Flex(
                       direction: Axis.horizontal,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       mainAxisSize: MainAxisSize.max,
                       children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                         width: 5,height: 5,
                         child: DecoratedBox(
                           decoration: BoxDecoration(
                               color: Colors.white
                           ),
                         ),

                       )),
                     );
                   },

                   ),
                 )),
                 SizedBox(
                   height: 20,
                   width: 10,
                   child: DecoratedBox(
                     decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(10),
                           bottomLeft: Radius.circular(10),
                         )
                     ),
                   ),
                 )
               ],
             ),
           ),
           Container(
             decoration: BoxDecoration(
                 color: Styles.orangeColor,
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(21),
                   bottomRight: Radius.circular(21),
                 )
             ),
             padding: EdgeInsets.only(left: 16 ,top: 10, right: 16,
             bottom: 16),
             child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(ticket['date'],
                           style: Styles.headLineStyle3.copyWith(color: Colors.white),
                         ),
                         const Gap(5),
                         Text("Date",
                         style: Styles.headLineStyle4.copyWith(color: Colors.white),
                         ),

                       ],
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text(ticket['departure-time'].toString(),
                           style: Styles.headLineStyle3.copyWith(color: Colors.white),
                         ),
                         const Gap(5),
                         Text("Departure time",
                           style: Styles.headLineStyle4.copyWith(color: Colors.white),
                         ),

                       ],
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.end
                       ,
                       children: [
                         Text(ticket['number'].toString(),
                           style: Styles.headLineStyle3.copyWith(color: Colors.white),
                         ),
                         const Gap(5),
                         Text("Number",
                           style: Styles.headLineStyle4.copyWith(color: Colors.white),
                         ),

                       ],
                     ),
                   ],
                 )
               ],
             ),

           )
         ],
       ),
      ),
    );
  }
}

