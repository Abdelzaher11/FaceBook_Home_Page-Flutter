//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//class Demo extends StatefulWidget {
//  @override
//  _DemoState createState() => _DemoState();
//}
//
//class _DemoState extends State<Demo> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(),
//      body: ListView.builder(itemBuilder: (context,index)=>NewTes),
//    );
//  }
//  void NewTest()=>Expanded(
//    child: Row(
//      children: <Widget>[
//        Expanded(child: Padding(
//          padding: EdgeInsets.only(top: 60.0,bottom: 60.0,right: 120.0,left: 120.0),
//          child: Container(
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(30.0),
//              color: Colors.blue,
//            ),
//            clipBehavior: Clip.antiAliasWithSaveLayer,
//            child: Column(
//              children: <Widget>[
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Align(
//                    alignment: Alignment.topLeft,
//                    child: CircleAvatar(
//                      backgroundColor: Colors.white54,
//                      child: Icon(
//                        Icons.person,
//                        color: Colors.white,
//                      ),
//                    ),
//                  ),
//                ),
//                Spacer(flex: 1,),
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Align(
//                      alignment: Alignment.bottomCenter,
//                      child: Text('Name')
//                  ),
//                ),
//              ],
//            ),
//          ),
//        )),
//      ],
//
//    ),
//  );
//}
//
//
