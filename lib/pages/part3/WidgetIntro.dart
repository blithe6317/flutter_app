import 'package:flutter/material.dart';

class WidgetIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Widget简介"),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Echo(
                text: "hello world",
              ),
              Container(
                child: Builder(builder: (context) {
                  Scaffold scaffold =
                      context.findAncestorWidgetOfExactType<Scaffold>();
                  return (scaffold.appBar as AppBar).title;
                }),
              ),
              CounterWidget(),
            ],
          ),
        ));
  }
}

class Echo extends StatelessWidget {
  const Echo({
    Key key,
    @required this.text,
    this.backgroundColor: Colors.grey,
  }) : super(key: key);

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key key, this.initValue: 0});

  final int initValue;

  @override
  _CounterWidgetState createState() => new _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text("$_counter"),
          onPressed: () => setState(() => ++_counter),
        ),
        Builder(
          builder: (context) {
            return RaisedButton(
              child: Text("显示SnackBar"),
              onPressed: () {
                ScaffoldState _state =
                    context.findAncestorStateOfType<ScaffoldState>();
                _state.showSnackBar(SnackBar(
                  content: Text("我就是SnackBar"),
                ));
              },
            );
          },
        )
      ],
    ));
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
