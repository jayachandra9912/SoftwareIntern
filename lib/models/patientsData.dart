import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientData {
  //final IconData? icon;
  final String? icon, id, name, age, address, number, lastVisit, status;

  PatientData({this.icon, this.id, this.name, this.age, this.address, this.number, this.lastVisit,this.status});
}

List demoPatientDatas = [
  PatientData(
    icon: "assets/icons/xd_file.svg",
    id: "KU 00536",
    name: "jayasurya",
    age: "45",
    address: "bhattupally kazipet warangal",
    number: "6301054515",
    lastVisit: "11-jan- 2023",
    status: "Approved"
  
    // icon: "assets/icons/xd_file.svg",
    // title: "XD File",
    // date: "01-03-2021",
    // size: "3.5mb",
  ),
  PatientData(
    icon: "assets/icons/xd_file.svg",
    id: "KU 00536",
    name: "jayachandra",
    age: "44",
    address: "bhattupally ",
    number: "6301054515",
    lastVisit: "11-jan- 2023",
    status: "Approved"
  ),
  PatientData(
    icon: "assets/icons/xd_file.svg",
     id: "KU 00536",
    name: "jayashankar",
    age: "45",
    address: " kazipet ",
    number: "6301054515",
    lastVisit: "11-jan- 2023",
    status: "Approved"
  ),
  PatientData(
    icon: "assets/icons/xd_file.svg",
     id: "KU 00536",
    name: "Srinivas",
    age: "45",
    address: "bhattupally kazipet warangal",
    number: "6301054515",
    lastVisit: "11-jan- 2023",
    status: "Approved"
  ),
  PatientData(
    icon: "assets/icons/xd_file.svg",
     id: "KU 00536",
    name: "jayachandra",
    age: "45",
    address: "bhattupally kazipet warangal",
    number: "6301054515",
    lastVisit: "11-jan- 2023",
    status: "Approved"
  ),
  PatientData(
    icon: "assets/icons/xd_file.svg",
     id: "KU 00536",
    name: "jayachandra",
    age: "45",
    address: "bhattupally kazipet warangal",
    number: "6301054515",
    lastVisit: "11-jan- 2023",
    status: "Approved"
  ),
  PatientData(
    icon: "assets/icons/xd_file.svg",
     id: "KU 00536",
    name: "jayachandra",
    age: "45",
    address: "bhattupally kazipet warangal",
    number: "6301054515",
    lastVisit: "11-jan- 2023",
    status: "Approved"
  ),
];