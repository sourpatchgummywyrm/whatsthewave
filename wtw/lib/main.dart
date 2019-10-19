/*import 'package:flutter/material.dart';
import './newuser/Login.dart';
import './main/home[1].dart';

need to do: 
- add photoshop picture of WTW Logo (tentative subject to change)
- figure out animations from different screens
- database shit
- need login screen (will skip for now just to get base product functionality out)
- increase width of login & signup button
- maybe decrease height of button
- new user.dart animations. Slowly fade up

- add animatino 
*/
import 'package:flutter/material.dart';
import 'package:wtw/global.dart';
import './newuser/Start.dart';
import './main/hub.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Hub(),
      debugShowCheckedModeBanner: false,
    );
  }
}
