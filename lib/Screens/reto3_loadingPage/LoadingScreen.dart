import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './HomeScreen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  int currentStep = 0;
  int maxSteps = 5;
  double get percent => currentStep / maxSteps;

  initState() {
    super.initState();
    _getApi();
  }

  dispose() {
    super.dispose();
  }

  _getApi() async {
    Future.delayed(const Duration(milliseconds: 2500), () {
      setState(() {
        Navigator.push(context, new MaterialPageRoute(builder: (context) => new HomeScreen3()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading Screen"),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text("Loading..."),
              ),
              ProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProgressIndicator extends StatefulWidget {
  @override
  _ProgressIndicatorState createState() => _ProgressIndicatorState();
}

class _ProgressIndicatorState extends State<ProgressIndicator> with SingleTickerProviderStateMixin{
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2500), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {

        });
      });
    controller.repeat();
  }

  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 10,
        width: 250,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          child: LinearProgressIndicator(
            value: animation.value,
          ),
        ),
      ),
    );
  }
}


