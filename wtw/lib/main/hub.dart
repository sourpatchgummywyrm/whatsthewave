import 'package:flutter/material.dart';
import 'package:wtw/global.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wtw/main/profile.dart';
import 'package:wtw/main/search.dart';
import 'package:wtw/main/waves.dart';

class Hub extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HubState();
  }
}

class HubState extends State<Hub> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: new Scaffold(
          backgroundColor: paleRedColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: new AppBar(
              leading: new Container(),
              backgroundColor: paleRedColor,
              elevation: 0.0,
              bottom: TabBar(
                // labelColor: Colors.redAccent,
                // unselectedLabelColor: paleRedColor,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: darkerRedColors),
                // indicator:
                //     new BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                tabs: <Widget>[
                  new Tab(
                    child: new Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: new Text("Search", style: reggie3),
                    ),
                  ),
                  new Tab(
                    child: new Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: new Text("Waves", style: reggie3),
                    ),
                  ),
                  new Tab(
                    child: new Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: new Text(
                        "Hub",
                        style: reggie3,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[Search(), Waves(), Profile()],
          )),
    );
  }
}
