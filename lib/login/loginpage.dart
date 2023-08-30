import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:admin/login/theme.dart';
import 'package:admin/main/main_screen.dart';
import 'package:admin/login/otppage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage() ;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  
  TextEditingController countryController = TextEditingController();
  var phone = "";

    @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+91";
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return 
          Scaffold(
              backgroundColor: Color(0xffFFF3DA),
            
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                                child: Stack(
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        height: 240,
                                        constraints: const BoxConstraints(
                                          maxWidth: 500
                                        ),
                                        margin: const EdgeInsets.only(top: 100),
                                        decoration: const BoxDecoration(color: Color(0xFFE1E0F5), borderRadius: BorderRadius.all(Radius.circular(30))),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                          constraints: const BoxConstraints(maxHeight: 340),
                                          margin: const EdgeInsets.symmetric(horizontal: 8),
                                          child: Image.asset("assets/images/login.png")),
                                    ),
                                  ],
                                ),
                              ),
                              // SizedBox(height: 30,),
                              Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text('DeepFacts Private Limited',
                                      style: TextStyle(color: MyColors.primaryColor, fontSize: 30, fontWeight: FontWeight.w800)))
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  constraints: const BoxConstraints(
                                      maxWidth: 500
                                  ),
                                  margin: const EdgeInsets.symmetric(horizontal: 10),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(text: 'We will send you an ', style: TextStyle(color: MyColors.primaryColor)),
                                      TextSpan(
                                          text: 'One Time Password ', style: TextStyle(color: MyColors.primaryColor, fontWeight: FontWeight.bold)),
                                      TextSpan(text: 'on this mobile number', style: TextStyle(color: MyColors.primaryColor)),
                                    ]),
                                  )),
                                  SizedBox(height: 30,),
                                  Container(
                                                height: 55,
                                                width: MediaQuery.of(context).size.width * 35/100,
                                                decoration: BoxDecoration(
                                                    border: Border.all(width: 1, color: Colors.black,),
                                                    borderRadius: BorderRadius.circular(10)),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    SizedBox(
                                                      width: 40,
                                                      child: TextField(
                                                        style: TextStyle(color: Colors.black),
                                                        controller: countryController,
                                                        
                                                        keyboardType: TextInputType.number,
                                                        decoration: InputDecoration(
                                                          border: InputBorder.none,
                                                          
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "|",
                                                      style: TextStyle(fontSize: 33, color: Colors.grey),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                        child: TextField(
                                                          keyboardType: TextInputType.phone, 
                                                          onChanged: (value){
                                                            phone = value;
                                                          },
                                                          style: TextStyle(color: Colors.black),
                                                      // keyboardType: TextInputType.phone,
                                                      
                                                      
                                                      decoration: InputDecoration(
                                                        
                                                        //fillColor: Colors.black,
                                                        border: InputBorder.none,
                                                        hintText: "Phone",
                                                        hintStyle: TextStyle(color: Colors.black)
                                                        
                                                      ),
                                                    ))
                                                  ],
                                                ),
                                  ),
                              // Container(
                              //   height: 40,
                              //   constraints: const BoxConstraints(
                              //     maxWidth: 500
                              //   ),
                              //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              //   child: CupertinoTextField(
                              //     padding: const EdgeInsets.symmetric(horizontal: 16),
                              //     decoration: BoxDecoration(
                              //       color: Color(0xffE2E1F5),
                              //       borderRadius: const BorderRadius.all(Radius.circular(4))
                              //     ),
                              //     controller: phoneController,
                              //     clearButtonMode: OverlayVisibilityMode.editing,
                              //     keyboardType: TextInputType.phone,
                              //     maxLines: 1,
                              //     placeholder: '+33...',
                              //   ),
                              // ),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                constraints: const BoxConstraints(
                                    maxWidth: 500
                                ),
                                child: RawMaterialButton(
                                  onPressed: () async{
                                    await FirebaseAuth.instance.verifyPhoneNumber(
                                    phoneNumber: '${countryController.text + phone}',
                                    verificationCompleted: (PhoneAuthCredential credential) {},
                                    verificationFailed: (FirebaseAuthException e) {},
                                    codeSent: (String verificationId, int? resendToken) {},
                                    codeAutoRetrievalTimeout: (String verificationId) {},
                                     );
                                    //  Navigator.push(
                                    //   context,
                                    //    MaterialPageRoute(builder: (context) => OtpPage()),
                                    //         );
                                    
                                  },
                                  fillColor: MyColors.primaryColor,
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          'Next',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                                            color: MyColors.primaryColorLight,
                                          ),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          
        
      
    
  }
}