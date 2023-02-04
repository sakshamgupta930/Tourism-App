import 'package:flutter/material.dart';
class IIsearchScreen extends StatefulWidget {
  IIsearchScreen({Key? key}) : super(key: key);

  @override
  State<IIsearchScreen> createState() => _IIsearchScreenState();
}

class _IIsearchScreenState extends State<IIsearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        title: Container(height: 40,
        margin: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,),
        child: TextField(
          cursorColor: Colors.grey.shade500,
          decoration: InputDecoration(hintText: "Search",
        hintStyle: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),
        border: InputBorder.none,
        prefixIcon: Icon(Icons.search,
        size: 24, color: Colors.grey.shade500,
        )
        ),
        style: TextStyle(color: Colors.black, fontSize: 16.5),
        ),
        ),
      ),
    );
  }
}