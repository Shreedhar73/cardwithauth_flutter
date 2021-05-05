import 'package:flutter/material.dart';

class Person{
  final String name, age, imagepath, address, contact;
  Person({this.name, this.age,this.address,this.contact, this.imagepath});

}

List <Person> PersonList = [
  Person(
    name: "Shreedhar",
    age: "22",
    imagepath: "images/2.jpg",
    address: "kalani",
    contact: "9860687909"
  ),

  Person(
    name: "hajsd",
    age: "hadsh",
    imagepath: "images/2.jpg",
    address: "kalanaki",
    contact: "asd"

  ),

];