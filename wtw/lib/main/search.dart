import 'package:flutter/material.dart';
import 'package:wtw/global.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SearchState();
  }
}

class SearchState extends State<Search> {
  createParty(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: new Text(
              "Create Party",
              textAlign: TextAlign.center,
            ),
            content: new Column(
              children: <Widget>[
                new TextFormField(),
                new TextFormField(),
                new TextFormField(),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.75;
    double height1 = height * 0.8;
    return new Scaffold(
      backgroundColor: paleRedColor,
      body: new Container(),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 20.0,
        onPressed: () {
          createParty(context);
        },
        label: Text(
          'Create',
          style: reggie,
        ),
        icon: Icon(
          Icons.create,
          color: paleRedColor,
        ),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
