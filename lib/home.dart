import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  HomeState createState() => HomeState();

}
class HomeState extends State<Home>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color.fromRGBO(253, 224, 224, 1),
            body: ListView.builder(
          itemCount: 1,
          padding: EdgeInsets.all(5),
          itemBuilder: (BuildContext context, int index) => Container(
                padding: EdgeInsets.only(top: 30, bottom: 10),
                child: Text(
                  'Home',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
      );
  }
}
