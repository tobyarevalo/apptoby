import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:tobyapp/login.dart';
import 'package:tobyapp/register.dart';

void main() {
  runApp(new MaterialApp(home: new HomePage()));
}

class HomePage extends StatefulWidget {

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _angle = 90;
  bool _isRotated = true;
  List<Widget> _listCards = [];
  AnimationController _controller;
  Animation<double> _animation;
  Animation<double> _animation2;
  var prueba;

  @override
  void initState() {
    _setupAnimations();
    super.initState();
  }

  _setupAnimations() {
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 180),
    );

    _animation = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.0, 1.0, curve: Curves.linear),
    );

    _animation2 = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.5, 1.0, curve: Curves.linear),
    );

    _controller.reverse();
  }

  void _rotate() {
    setState(() {
      if (_isRotated) {
        _angle = 45;
        _isRotated = false;
        _controller.forward();
      } else {
        _angle = 90;
        _isRotated = true;
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: new Stack(children: <Widget>[
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: _listCards,
            ),
          ),
        ),
        new Positioned(
            bottom: 200.0,
            right: 24.0,
            child: new Container(
              child: new Row(
                children: <Widget>[
                  new ScaleTransition(
                    scale: _animation2,
                    alignment: FractionalOffset.center,
                  ),
                  new ScaleTransition(
                    scale: _animation2,
                    alignment: FractionalOffset.center,
                    child: new Material(
                        color: new Color(0xFF00BFA5),
                        type: MaterialType.circle,
                        elevation: 6.0,
                        child: new GestureDetector(
                          child: new Container(
                              width: 40.0,
                              height: 40.0,
                              child: new InkWell(
                                onTap: () {
                                  setState(() {
                                   _listCards.removeLast();
                                  });
                                },
                                child: new Center(
                                  child: new Icon(
                                    Icons.exposure_neg_1,
                                    color: new Color(0xFFFFFFFF),
                                  ),
                                ),
                              )),
                        )),
                  ),
                ],
              ),
            )),
        new Positioned(
            bottom: 144.0,
            right: 24.0,
            child: new Container(
              child: new Row(
                children: <Widget>[
                  new ScaleTransition(
                    scale: _animation2,
                    alignment: FractionalOffset.center,
                  ),
                  new ScaleTransition(
                    scale: _animation2,
                    alignment: FractionalOffset.center,
                    child: new Material(
                        color: new Color(0xFF00BFA5),
                        type: MaterialType.circle,
                        elevation: 6.0,
                        child: new GestureDetector(
                          child: new Container(
                              width: 40.0,
                              height: 40.0,
                              child: new InkWell(
                                onTap: () {
                                  listCards();
                                },
                                child: new Center(
                                  child: new Icon(
                                    Icons.add,
                                    color: new Color(0xFFFFFFFF),
                                  ),
                                ),
                              )),
                        )),
                  ),
                ],
              ),
            )),
        new Positioned(
            bottom: 88.0,
            right: 24.0,
            child: new Container(
              child: new Row(
                children: <Widget>[
                  new ScaleTransition(
                    scale: _animation,
                    alignment: FractionalOffset.center,
                  ),
                  new ScaleTransition(
                    scale: _animation,
                    alignment: FractionalOffset.center,
                    child: new Material(
                        color: new Color(0xFFE57373),
                        type: MaterialType.circle,
                        elevation: 6.0,
                        child: new GestureDetector(
                          child: new Container(
                              width: 40.0,
                              height: 40.0,
                              child: new InkWell(
                                onTap: () {

                                },
                                child: new Center(
                                  child: new Icon(
                                    Icons.arrow_forward,
                                    color: new Color(0xFFFFFFFF),
                                  ),
                                ),
                              )),
                        )),
                  ),
                ],
              ),
            )),
        new Positioned(
          bottom: 16.0,
          right: 16.0,
          child: new Material(
              color: new Color(0xFFE57373),
              type: MaterialType.circle,
              elevation: 6.0,
              child: new GestureDetector(
                child: new Container(
                    width: 56.0,
                    height: 56.00,
                    child: new InkWell(
                      onTap: _rotate,
                      child: new Center(
                          child: new RotationTransition(
                        turns: new AlwaysStoppedAnimation(_angle / 360),
                        child: new Icon(
                          Icons.add,
                          color: new Color(0xFFFFFFFF),
                        ),
                      )),
                    )),
              )),
        ),
      ]),
    ));
  }

  listCards() {
    setState(() {
      _listCards.add(Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Center(
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  hintText: 'Ingrese URL',
                  labelText: 'URL',
                ),
              ),
            )
          ],
        ),
      )));
    });
  }
}
