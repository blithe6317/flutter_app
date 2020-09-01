import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
//          "new_page": (context) => NewRoute(),
          "new_page": (context) => EchoRoute(),
          "tip2": (context) {
            return TipRoute(text: ModalRoute.of(context).settings.arguments);
          },
          "/": (context) => MyHomePage(title: "Flutter Demo Home Page")
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FlatButton(
              child: Text("open new page"),
              textColor: Colors.blue,
              onPressed: () {
//                Navigator.push(context, MaterialPageRoute(builder: (context) {
//                  return NewRoute();
//                }));

                Navigator.of(context).pushNamed("new_page", arguments: "hi");
              },
            ),
            RaisedButton(
              onPressed: () async {
                var result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return TipRoute(text: "我是提示xxx");
                }));
                print("路由返回值：$result");
              },
              child: Text("打开提示页"),
            ),
            RandomWordsWidget()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("New route")),
      body: Center(
        child: Text("this is new page"),
      ),
    );
  }
}

class TipRoute extends StatelessWidget {
  TipRoute({
    Key key,
    @required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("提示")),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, "我是返回值"),
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EchoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text(args)),
    );
  }
}

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8),
      child: new Text(wordPair.toString()),
    );
  }
}
