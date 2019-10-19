import 'package:flutter/material.dart';
import 'package:wtw/global.dart';
import 'package:wtw/newuser/termsofservice.dart';
import 'dart:async';

class CreateParty extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CreatePartyState();
  }
}

class CreatePartyState extends State<CreateParty> {
  bool checkpoint = false;
  TextEditingController partyName = new TextEditingController();
  TextEditingController partyLocation = new TextEditingController();

  DateTime date = new DateTime.now();
  TimeOfDay time = new TimeOfDay.now();

  Future<Null> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: new DateTime(2019),
      lastDate: new DateTime(2030),
    );
    if (picked != null && picked != date) {
      setState(() {
        date = picked;
      });
    }
  }

  Future<Null> selectTime(BuildContext context) async {
    final TimeOfDay picked =
        await showTimePicker(context: context, initialTime: time);
    if (picked != null && picked != date) {
      setState(() {
        time = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: paleRedColor,
        body: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
              child: new TextFormField(),
            ),
            new Container(
              padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
              child: new TextFormField(),
            ),
            new Row(children: <Widget>[
              new Checkbox(
                activeColor: Colors.white,
                value: checkpoint,
                onChanged: (bool value) {
                  setState(() {
                    checkpoint = value;
                  });
                },
              ),
              new GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Terms()));
                },
                child: new Text("I agree to the terms and conditions"),
              ),
            ]),
            new SizedBox(
              child: new RaisedButton(
                color: Colors.white,
                onPressed: () {
                  selectDate(context);
                },
                child: new Text("Pick Day", style: reggie4),
              ),
            ),
            new Text(date.toString(), style: reggie3),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Container(
                  child: new SizedBox(
                    child: new RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      onPressed: () {
                        selectTime(context);
                      },
                      child: new Text("Pick Start Time", style: reggie4),
                    ),
                  ),
                ),
                new Container(
                  child: new SizedBox(
                    child: new RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      onPressed: () {
                        selectTime(context);
                      },
                      child: new Text("Pick Start Time", style: reggie4),
                    ),
                  ),
                )
              ],
            ),
            new Text(
              time.toString(),
              style: reggie3,
            ),
            new SizedBox(
              child: new RaisedButton(
                color: Colors.white,
                onPressed: () {
                  selectDate(context);
                },
                child: new Text(
                  "Create",
                  style: loginScreen,
                ),
              ),
            ),
          ],
        ));
  }
}
