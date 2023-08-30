
import 'dart:ui';

import 'package:admin/constants.dart';
import 'package:admin/main/components/side_menu.dart';
import 'package:flutter/material.dart';

class AddDoctor extends StatelessWidget {
  const AddDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Row(
        children: [
          SideMenu(),
          
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                 color: secondaryColor,
                 //elevation: 0,
                 //borderOnForeground: false,
                 
                 child: SizedBox(
                   height: 1500 ,
                   width: MediaQuery.of(context).size.width * 80/100,
                   child: Column(
                               children: [
                                //SizedBox(height: 20,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Add Doctor",style: TextStyle(color: Colors.lightBlue,fontSize: 20),),
                       Padding(
                         padding: const EdgeInsets.only(right: 10),
                         child: RawMaterialButton(
                           onPressed: (){},
                           fillColor: Colors.lightBlue,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                           child: Row(
                             children: [
                               Icon(Icons.download),
                               Text("Download",style: TextStyle(fontSize: 12),)
                             ],
                           ),
                           
                           ),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(right: 10),
                         child: RawMaterialButton(
                           onPressed: (){},
                           fillColor: Colors.lightBlue,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                           child: Text("Add new Event",style: TextStyle(fontSize: 12),),
                           
                           ),
                       )
                     ],
                   ),
                   Expanded(
                     child: Container(
                       height: MediaQuery.of(context).size.height,
                       width: MediaQuery.of(context).size.width ,
                       color: bgColor,
                       child: Padding(
                         padding: const EdgeInsets.all(20),
                         child: Column(
                           //mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Basic Information",style: TextStyle(fontSize: 18),),
                             Text("Description text here",style: TextStyle(fontSize: 12),),
                             Padding(
                               padding: const EdgeInsets.all(30),
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Expanded(
                                     child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'First Name',  
                                       hintText: 'Enter First Name',  
                                        ),  
                                       ),
                                   ),
                                   SizedBox(width: 30,),
                                     Expanded(
                                       child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Last Name',  
                                       hintText: 'Enter Last Name',  
                                        ),  
                                       ),
                                     ),
                                 ],
                               ),
                             ),  
                             Padding(
                               padding: const EdgeInsets.only(left: 30,right: 30),
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Expanded(
                                     child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Date of Birth',  
                                       hintText: 'Enter Date of Birth',  
                                        ),  
                                       ),
                                   ),
                                   SizedBox(width: 15,),
                                     Expanded(
                                       child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Gender',  
                                       hintText: 'Enter Gender',  
                                        ),  
                                       ),
                                     ),
                                     SizedBox(width: 30,),
                                     Expanded(
                                     child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Speciality',  
                                       hintText: 'Enter Speciality',  
                                        ),  
                                       ),
                                   ),
                                   SizedBox(width: 15,),
                                     Expanded(
                                       child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Phone',  
                                       hintText: 'Enter Phone',  
                                        ),  
                                       ),
                                     ),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(30),
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Expanded(
                                     child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Email',  
                                       hintText: 'Enter Email',  
                                        ),  
                                       ),
                                   ),
                                   SizedBox(width: 30,),
                                     Expanded(
                                       child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Hospital Name',  
                                       hintText: 'Enter Hospital Name',  
                                        ),  
                                       ),
                                     ),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 30,right: 30),
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Expanded(
                                     child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Doctor ID',  
                                       hintText: 'Enter Doctor ID',  
                                        ),  
                                       ),
                                   ),
                                   SizedBox(width: 15,),
                                     Expanded(
                                       child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Degree',  
                                       hintText: 'Enter Degree',  
                                        ),  
                                       ),
                                     ),
                                     SizedBox(width: 30,),
                                     Expanded(
                                     child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'License Number',  
                                       hintText: 'Enter License Number',  
                                        ),  
                                       ),
                                   ),
                                   SizedBox(width: 15,),
                                     Expanded(
                                       child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Website',  
                                       hintText: 'Enter Website',  
                                        ),  
                                       ),
                                     ),
                                 ],
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 30,right: 30,top: 30, bottom: 30),
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Expanded(
                                     child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Aadhar',  
                                       hintText: 'Enter Aadhar',  
                                        ),  
                                       ),
                                   ),
                                   SizedBox(width: 15,),
                                     Expanded(
                                       child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'PAN',  
                                       hintText: 'Enter PAN',  
                                        ),  
                                       ),
                                     ),
                                     SizedBox(width: 30,),
                                     Expanded(
                                     child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Blood Group',  
                                       hintText: 'Enter Blood Group',  
                                        ),  
                                       ),
                                   ),
                                   SizedBox(width: 15,),
                                     Expanded(
                                       child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Age',  
                                       hintText: 'Enter Age',  
                                        ),  
                                       ),
                                     ),
                                 ],
                               ),
                             ),
                     
                     
                     
                             Text("Payment Info",style: TextStyle(fontSize: 18),),
                             Text("Enter Details",style: TextStyle(fontSize: 12),),
                   
                             Padding(
                               padding: const EdgeInsets.all(30),
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Expanded(
                                     child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Payment ID',  
                                       hintText: 'Enter Payment ID',  
                                        ),  
                                       ),
                                   ),
                                   SizedBox(width: 30,),
                                     Expanded(
                                       child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Payment Date',  
                                       hintText: 'Enter Payment Date',  
                                        ),  
                                       ),
                                     ),
                                 ],
                               ),
                             ),
                   
                             Padding(
                               padding: const EdgeInsets.only(left: 30,right: 30,bottom: 30),
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Expanded(
                                     child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Payment Amount',  
                                       hintText: 'Enter Payment Amount',  
                                        ),  
                                       ),
                                   ),
                                   SizedBox(width: 30,),
                                     Expanded(
                                       child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Payment Description',  
                                       hintText: 'Enter Payment Description',  
                                        ),  
                                       ),
                                     ),
                                 ],
                               ),
                             ),
                 
                 
                             Text("Bank Account Information",style: TextStyle(fontSize: 18),),
                             Text("Enter Details",style: TextStyle(fontSize: 12),),
                   
                             Padding(
                               padding: const EdgeInsets.all(30),
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Expanded(
                                     child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Account Holder Name',  
                                       hintText: 'Enter Account Holder Name',  
                                        ),  
                                       ),
                                   ),
                                   SizedBox(width: 30,),
                                     Expanded(
                                       child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Account Number',  
                                       hintText: 'Enter Account Number',  
                                        ),  
                                       ),
                                     ),
                                 ],
                               ),
                             ),
                   
                             Padding(
                               padding: const EdgeInsets.only(left: 30,right: 30, bottom: 30),
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Expanded(
                                     child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Bank IFSC Code',  
                                       hintText: 'Enter Bank IFSC Code',  
                                        ),  
                                       ),
                                   ),
                                   SizedBox(width: 30,),
                                     Expanded(
                                       child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Bank Branch',  
                                       hintText: 'Enter Bank Branch',  
                                        ),  
                                       ),
                                     ),
                                 ],
                               ),
                             ),
                 
                 
                             Text("Social Media",style: TextStyle(fontSize: 18),),
                             Text("Enter Details",style: TextStyle(fontSize: 12),),
                 
                             Padding(
                               padding: const EdgeInsets.all(30),
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Expanded(
                                     child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Facebook ID',  
                                       hintText: 'Enter Facebook ID',  
                                        ),  
                                       ),
                                   ),
                                   SizedBox(width: 15,),
                                     Expanded(
                                       child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Linked In ID',  
                                       hintText: 'Enter Linked In ID',  
                                        ),  
                                       ),
                                     ),
                                     SizedBox(width: 30,),
                                     Expanded(
                                     child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Instagram ID',  
                                       hintText: 'Enter Instagram ID',  
                                        ),  
                                       ),
                                   ),
                                   SizedBox(width: 15,),
                                     Expanded(
                                       child: TextField(  
                                       decoration: InputDecoration(  
                                       border: OutlineInputBorder(),  
                                       labelText: 'Twitter ID',  
                                       hintText: 'Enter Twitter ID',  
                                        ),  
                                       ),
                                     ),
                                 ],
                               ),
                             ),
                 
                             Center(
                               child: RawMaterialButton(
                                onPressed: (){},
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                fillColor: Colors.lightBlue,
                                child: Text("Submit"),
                               ),
                             )
                       
                         ]),
                       ),
                   
                     ),
                   )
                 ],
                   ),
                 ),
                ),
              ),
            ),
          
        ],
      ),
    );
  }
}