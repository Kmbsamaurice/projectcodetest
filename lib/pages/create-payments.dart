import 'package:flutter/material.dart';
class PayBill extends StatefulWidget {
  const PayBill({ Key? key }) : super(key: key);

  @override
  _PayBillState createState() => _PayBillState();
}

class _PayBillState extends State<PayBill> {
  final _formKey = GlobalKey<FormState>();

  String? _value;
  String? _value2;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF663399),
          backwardsCompatibility: false,
         // systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0xFF2E7D32)),
          brightness: Brightness.dark,
          title: Text("Bill Payment"),
      ),
      body: SingleChildScrollView(
        child: Form (
          key: _formKey,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10,),
                Text("Service"),
                 Container(
              height: 55,
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0XFF666666)),
                borderRadius: BorderRadius.circular(5)
              ),
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none, ),
          items: [
              DropdownMenuItem<String>(
                child: Text('Insurance'),
                value: 'one',
              ),
              DropdownMenuItem<String>(
                child: Text('Electricity'),
                value: 'two',
              ),
          ],
          onChanged: (String? value) {
              setState(() {
                _value = value;
              });
          },
          hint: Text('Select Service'),
          value: _value,
        ),
            ),
                SizedBox(height: 20),
                Text("Wallet"),
                   Container(
              height: 55,
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0XFF666666)),
                borderRadius: BorderRadius.circular(5)
              ),
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none, ),
          items: [
              DropdownMenuItem<String>(
                child: Text('LTC wallet'),
                value: 'one',
              ),
              DropdownMenuItem<String>(
                child: Text('ETH Wallet'),
                value: 'two',
              ),
          ],
          onChanged: (String? value) {
              setState(() {
                _value2 = value;
              });
          },
          hint: Text('Select Wallet'),
          value: _value2,
        ),
            ),
            SizedBox(height: 20,),
                Text("Amount"),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  textCapitalization: TextCapitalization.words,
                  // ignore: missing_return
                  validator: (value){
                    if (value!.isEmpty) {
                      return 'Please enter an amount';
                      } 
                      },
                      decoration: InputDecoration(
                        hintText: ('Please enter an amount'),
                        labelText: ('Enter Amount'),
                        labelStyle: TextStyle(
                          color: Color(0XFF666666),
                          fontSize: 12),
                          border: OutlineInputBorder(),
                           ),
                            obscureText: false,
                          ),
              SizedBox(height: 20,),
           
              SizedBox(height: 20,),
              Row(
                children: [
                Expanded(
                  child: MaterialButton(
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Color(0xFF663399))),
                      color: Colors.white,
                       textColor: Color(0XFF663399),
                        child: Text('cancel', style: TextStyle(
                                fontSize: 20
                              ),),
                              onPressed: (){
                               // Navigator.push(context,MaterialPageRoute(builder: (context) => UserLogin()));
                              }),
                ),
                SizedBox(width: 10,),
                 Expanded(
                   child: MaterialButton(
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Color(0XFF663399))),
                      color: Color(0XFF663399),
                       textColor: Colors.white,
                        child: Text('Pay', style: TextStyle(
                                fontSize: 20
                              ),),
                              onPressed: (){
                               // Navigator.push(context,MaterialPageRoute(builder: (context) => UserLogin()));
                              }),
                 ),
                ],
              )
              ],
            ),
          ),
        )
      ),
    );
  }
}