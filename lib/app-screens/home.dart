import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepPurple,
            // width: 200.0,
            // height: 100.0,
            // margin: EdgeInsets.all(20.0),
            // margin: EdgeInsets.only(left: 50.0, top: 50.0),
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            // padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(children: <Widget>[
                  Expanded(
                      child: Text(
                    'Flutter App',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w700,
                        // fontStyle: FontStyle.italic
                        color: Colors.blue),
                  )),
                  Expanded(
                      child: Text(
                    'From Mumbai to Banglore via Dehli',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        // fontFamily: "Raleway",
                        // fontWeight: FontWeight.w700,
                        // fontStyle: FontStyle.italic
                        color: Colors.green),
                  )),
                ]),
                Row(children: <Widget>[
                  Expanded(child: Text(
                    'Airport',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w700,
                        // fontStyle: FontStyle.italic
                        color: Colors.red
                    ),
                  )),
                  Expanded(child: Text(
                    'From karachi to Lahore via Dehli',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w700,
                        // fontStyle: FontStyle.italic
                        color: Colors.white),
                  )),
                ]),
                FlightImageAsset(),
                FlightBookButton()
              ],
            )));
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/plane.png");
    Image image = Image(image:assetImage, width: 300.0, height: 300.0,);
    return Container(child: image,);
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            'Book Your Flight',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
            )
          ),
          elevation: 6.0,
          onPressed: () => bookFlight(context)
          ),
    );
  }

  void bookFlight(BuildContext context) {

    var alertDialog = AlertDialog (
      title: Text("Flight Booked Successfully"),
      content: Text("Have a Pleasant flight"),
      actions: [
        RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('abc'),
        )
        ],
    );

        showDialog(
            context: context,
          builder: (BuildContext context) => alertDialog
        );
  }
}