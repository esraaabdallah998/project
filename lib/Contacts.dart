import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyContacts extends StatelessWidget {
  List contacts = [
    Contact(
        imagesource: "assets/image.png",
        name: "Sara",
        phone: "+201053367865"),
    Contact(
        imagesource: "assets/image2.png",
        name: "Ali",
        phone: "+201064467895"),
    Contact(
        imagesource: "assets/image3.png",
        name: "Asmaa",
        phone: "+201083497865"),
    Contact(
        imagesource: "assets/image4.png",
        name: "Ahmed",
        phone: "+201085347865"),
    Contact(
        imagesource: "assets/image5.png",
        name: "Yara",
        phone: "+201051369925"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder( itemCount: contacts.length,
      itemBuilder: (context, index) {
        return ListTile(leading:CircleAvatar(backgroundImage:AssetImage(contacts[index].imagesource)), title: Text(contacts[index].name), subtitle: Text(contacts[index].phone),);
      }, ),

    );
  }
}
class Contact {
  String imagesource;
  String name;
  String phone;

  Contact({this.imagesource, this.name, this.phone});
}