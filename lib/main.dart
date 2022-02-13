import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projectcodetest/pages/list-payments.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
      const Duration(seconds: 10),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PaymentList())),
    );

  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
       statusBarColor: Color(0xFF2E7D32),
       statusBarBrightness: Brightness.dark,
    ));
 
    return Scaffold(
      body: getBody(),
    );
  }

Widget getBody() {
  return Container(
    height: double.infinity,
    padding: EdgeInsets.all(20),
    /*decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/bak.jpg"),
        fit: BoxFit.fill
      )
    ),*/
    child: Center(
      child: Container(
        width: 100,
        height: 250,
        child: Column(
          children: [
            Image.asset("assets/images/pcLogo.png", width: 140,),
            SizedBox(height: 20,),
            Text("Loading...", style: TextStyle(color: Color(0xFFF6921E), fontSize: 18,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    ),
  );
}

}