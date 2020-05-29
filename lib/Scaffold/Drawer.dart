import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transparent_image/transparent_image.dart';

/**
 * https://ithelp.ithome.com.tw/articles/10215654
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lyon Flutter Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;//private
  SnackBar _snackBar = SnackBar(content: Text("You Click Float Button"));
  void _incrementCounter() {
    Scaffold.of(context).removeCurrentSnackBar();
    Scaffold.of(context).showSnackBar(_snackBar);
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lyon Flutter 範例"),
          leading:Image.asset('images/lyonhsu3_t.png'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Lyon flutter make app'),
                accountEmail: Text('lejiteyu@gmail.com'),
                currentAccountPicture: Image.asset('images/lyonhsu3_t.png'),
                decoration: BoxDecoration(color: Colors.grey),
                onDetailsPressed: _incrementCounter,
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Item1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.headset),
                title: Text('Item2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Item3'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Expanded(
                child: Image.network(
                    'https://titangene.github.io/images/cover/flutter.jpg'),
              ),
            ],
          ),
        ),
        body:
        //ListView(
     //     children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Image.network(
                      'https://titangene.github.io/images/cover/flutter.jpg'),
                ),
                Expanded(
                  child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image:
                      'https://titangene.github.io/images/cover/flutter.jpg'),
                ),
                Expanded(
                    child: FadeInImage.assetNetwork(
                        placeholder: 'images/record.png',
                        image:
                        'https://titangene.github.io/images/cover/flutter.jpg')),
                Expanded(
                  child: Image.asset('images/lyonhsu3_t.png'),
                ),

                Expanded(
                  child:Container(
                    transform: Matrix4.rotationZ(-0.2),
                    constraints: BoxConstraints.expand(),
                    color: Colors.deepOrange,
                    child: Center(child: Text('Flutter Container Child', style: TextStyle(fontSize: 60.0),)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Image.asset('images/record.png'),
                    ),
                    Expanded(
                      child: Image.asset('images/record.png'),
                    ),
                    Expanded(
                      child: Image.asset('images/record.png'),
                    ),
                  ],
                ),
                ButtonTheme(
                  buttonColor: Colors.deepPurple,
                  minWidth: 200.0,
                  height: 100,
                  child: RaisedButton(
                    onPressed: () {
                      Scaffold.of(context).removeCurrentSnackBar();
                      Scaffold.of(context).showSnackBar(_snackBar);
                    },
                    child: Text('Third Button'),
                  ),
                ),
              ],
            ),
     //     ],
     //   ),
      floatingActionButton: FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
