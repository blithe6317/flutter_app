import "package:flutter/material.dart";

import './pages/part3/index.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Flutter Demo")),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Wrap(
            spacing: 8,
            runSpacing: 4,
            alignment: WrapAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("第三章"),
                color: Colors.blue,
                highlightColor: Colors.blue[500],
                splashColor: Colors.blue[50],
                textColor: Colors.white,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Part3Route();
                  }));
                },
              ),
              RaisedButton(
                child: Text("第四章"),
                color: Colors.blue,
                highlightColor: Colors.blue[500],
                splashColor: Colors.blue[50],
                textColor: Colors.white,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("第五章"),
                color: Colors.blue,
                highlightColor: Colors.blue[500],
                splashColor: Colors.blue[50],
                textColor: Colors.white,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("第六章"),
                color: Colors.blue,
                highlightColor: Colors.blue[500],
                splashColor: Colors.blue[50],
                textColor: Colors.white,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("第七章"),
                color: Colors.blue,
                highlightColor: Colors.blue[500],
                splashColor: Colors.blue[50],
                textColor: Colors.white,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("第八章"),
                color: Colors.blue,
                highlightColor: Colors.blue[500],
                splashColor: Colors.blue[50],
                textColor: Colors.white,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("第九章"),
                color: Colors.blue,
                highlightColor: Colors.blue[500],
                splashColor: Colors.blue[50],
                textColor: Colors.white,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("第十章"),
                color: Colors.blue,
                highlightColor: Colors.blue[500],
                splashColor: Colors.blue[50],
                textColor: Colors.white,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("第十一章"),
                color: Colors.blue,
                highlightColor: Colors.blue[500],
                splashColor: Colors.blue[50],
                textColor: Colors.white,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("第十二章"),
                color: Colors.blue,
                highlightColor: Colors.blue[500],
                splashColor: Colors.blue[50],
                textColor: Colors.white,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("第十三章"),
                color: Colors.blue,
                highlightColor: Colors.blue[500],
                splashColor: Colors.blue[50],
                textColor: Colors.white,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("第十四章"),
                color: Colors.blue,
                highlightColor: Colors.blue[500],
                splashColor: Colors.blue[50],
                textColor: Colors.white,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("第十五章"),
                color: Colors.blue,
                highlightColor: Colors.blue[500],
                splashColor: Colors.blue[50],
                textColor: Colors.white,
                colorBrightness: Brightness.dark,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
