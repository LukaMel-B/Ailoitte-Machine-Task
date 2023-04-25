import 'package:flutter/material.dart';

var appBarHome = AppBar(
  automaticallyImplyLeading: false,
  title: const Text(
    'Menu',
    style: TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
  ),
  backgroundColor: Colors.transparent,
  elevation: 0,
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 15, top: 5, bottom: 5, left: 5),
      child: Container(
        width: 50,
        decoration: const BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              color: Colors.white,
            )),
      ),
    )
  ],
  leading: Padding(
    padding: const EdgeInsets.only(right: 5, top: 5, bottom: 5, left: 10),
    child: Container(
      width: 70,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/avatar.jpg'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(15))),
    ),
  ),
  centerTitle: true,
);

var textField = TextFormField(
  decoration: InputDecoration(
      prefixIcon: const Icon(Icons.search),
      hintText: 'Search',
      contentPadding: const EdgeInsets.all(15),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
);
