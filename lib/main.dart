import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dasboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  // int _counter = 0;

//f45d27
//f5851f
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  void login() {
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context) => new Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFf45d27), Color(0xFFf5851f)],
                  ),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(90))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                  Align(
                    child: Text(
                      'E-TRIBUTACAO',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                          padding: const EdgeInsets.only(bottom: 32, right: 32),
                          child: InkWell(
                            onTap: () => null,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.white)),
                              child: Text(
                                'Registar-se',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ))),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 32),
              child: Column(
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      padding: EdgeInsets.only(
                          top: 4, bottom: 4, right: 16, left: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 5)
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.call, color: Color(0xFFf45d27)),
                          hintText: 'Numero de Celular',
                        ),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      margin: EdgeInsets.only(top: 32),
                      padding: EdgeInsets.only(
                          top: 4, bottom: 4, right: 16, left: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 5)
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Color(0xFFf45d27),
                          ),
                          hintText: 'Senha',
                        ),
                      )),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16, right: 32),
                        child: Text(
                          'Esqueci senha ',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      height: 45,
                      margin: EdgeInsets.only(top: 32),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                            colors: [Color(0xFFf45d27), Color(0xFFf5851f)]),
                      ),
                      child: new InkWell(
                          onTap: () => login(),
                          child: Center(
                              child: Text(
                            'Login'.toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          )))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
