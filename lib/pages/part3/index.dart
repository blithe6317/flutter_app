import 'package:flutter/material.dart';

import 'WidgetIntro.dart';
import 'StateManageRoute.dart';

class Part3Route extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("第三章 基础组件"),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Widget简介"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return WidgetIntro();
                      }));
                    },
                  ),
                  RaisedButton(
                    child: Text("状态管理"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return StateMangeRoute();
                      }));
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}
