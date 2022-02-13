import 'package:flutter/material.dart';
import 'package:projectcodetest/pages/create-payments.dart';
import 'package:projectcodetest/pages/view-payment.dart';

class PaymentList extends StatefulWidget {
  const PaymentList({ Key? key }) : super(key: key);

  @override
  _PaymentListState createState() => _PaymentListState();
}

class _PaymentListState extends State<PaymentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF663399),
          backwardsCompatibility: false,
         // systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0xFF2E7D32)),
          brightness: Brightness.dark,
          title: Text("Payment List"),
      ),
     body: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           SizedBox(height: 10,),
           InkWell(
             onTap:() {
               Navigator.of(context).push(new MaterialPageRoute(builder: (context) => ViewPayment()));
             },
             child: Container(
               width: double.infinity,
               margin: EdgeInsets.symmetric(horizontal: 15),
               padding: EdgeInsets.symmetric(horizontal: 10),
               height: 70,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Image.asset("assets/images/money.jpeg", width: 60, height: 60,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Insurance"),
                       Text("Property Coverage")
                     ],
                   ),
                   Spacer(),
                   IconButton(
                        icon: Icon(Icons.arrow_forward_ios_sharp), 
                        onPressed: null)
                 ],
               ),
             ),
           ),
            SizedBox(height: 10,),
           Container(
             width: double.infinity,
             margin: EdgeInsets.symmetric(horizontal: 15),
             padding: EdgeInsets.symmetric(horizontal: 10),
             height: 70,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset("assets/images/money.jpeg", width: 60, height: 60,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Electricity"),
                     Text("Utility Payment")
                   ],
                 ),
                 Spacer(),
                 IconButton(
                      icon: Icon(Icons.arrow_forward_ios_sharp), 
                      onPressed: null)
               ],
             ),
           )
         ],
       ),),
       floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PayBill()));
        },
        backgroundColor: Color(0Xff663399),
        child: const Icon(Icons.payment),
      ),
    );
  }
}