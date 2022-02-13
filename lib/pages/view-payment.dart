import 'package:flutter/material.dart';
class ViewPayment extends StatefulWidget {
  const ViewPayment({ Key? key }) : super(key: key);

  @override
  _ViewPaymentState createState() => _ViewPaymentState();
}

class _ViewPaymentState extends State<ViewPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: Color(0XFF663399),
          backwardsCompatibility: false,
         // systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0xFF2E7D32)),
          brightness: Brightness.dark,
          title: Text("Payment Details"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Row(children: [
              Text("Property Coverage"),
              Spacer(),
              Text("Insurance")
            ],),
            SizedBox(height: 10,),
            Row(children: [
              Text("Personal Account"),
              Spacer(),
              Text("LTC Wallet")
            ],),
            SizedBox(height: 10,),
            Row(children: [
              Text("last payment"),
              Spacer(),
              Text("7 jun,21")
            ],),
            SizedBox(height: 10,),
            Row(children: [
              Text("Balance"),
              Spacer(),
              Text("-10.24LTC")
            ],),
            SizedBox(height: 10,),
          ],
        ),
      ),
      
    );
  }
}