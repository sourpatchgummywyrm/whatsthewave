import 'package:flutter/material.dart';
import 'package:wtw/main/waves.dart';

class Dialogs {
  information(BuildContext context, String title) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext) {
          return AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("Remove $title event from your timeline?")
                ],
              ),
            ),
            actions: <Widget>[
              new RaisedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Bet"),
              )
            ],
          );
        });
  }
}
