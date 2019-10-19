import 'package:flutter/material.dart';
import 'package:wtw/global.dart';

class Waves extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new WavesState();
  }
}

class WavesState extends State<Waves> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.75;

    return new Scaffold(
      backgroundColor: paleRedColor,
      body: new Column(
        children: <Widget>[
          new Container(
            height: 20.0,
          ),
          new Container(
              height: height,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _events.length,
                itemBuilder: (context, index) {
                  final events = _events[index];
                  return new Container(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: new Card(
                          elevation: 10.0,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: new ExpansionTile(
                            title: new Column(
                              children: <Widget>[
                                new Text(
                                  events.name,
                                  style: reggie4,
                                  textAlign: TextAlign.left,
                                ),
                                new Text(
                                  events.location,
                                  style: reggie5,
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            children: <Widget>[
                              new ListTile(
                                title: new Text(events.description),
                              )
                            ],
                          )));
                },
              ))
        ],
      ),
    );
  }
}

class Events {
  Events({this.name, this.location, this.description});

  String name;
  String location;
  String description;
}

final List<Events> _events = <Events>[
  Events(
      name: 'party1', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party2', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party3', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party4', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party5', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party6', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party7', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party8', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party9', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party10', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party11', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party12', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party13', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party14', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party15', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party16', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party17', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party18', location: 'location', description: "yadda yadda yadda"),
  Events(
      name: 'party19', location: 'location', description: "yadda yadda yadda"),
];
