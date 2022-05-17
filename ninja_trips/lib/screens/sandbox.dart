import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  const SandBox({Key key}) : super(key: key);

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;
  // bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        duration: Duration(seconds: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("animate Margin"),
              onPressed: () {
                setState(() {
                  _margin = 50;
                  // isClicked = !isClicked;
                  // if (!isClicked) {
                  //   _margin = 0;
                  // } else {
                  //   _margin = 50;
                  // }
                });
              },
            ),
            ElevatedButton(
              child: Text("animate Color"),
              onPressed: () {
                setState(() {
                  _color = Colors.red;
                  // isClicked = !isClicked;
                  // if (!isClicked) {
                  //   _margin = 0;
                  // } else {
                  //   _margin = 50;
                  // }
                });
              },
            ),
            ElevatedButton(
              child: Text("animate Width"),
              onPressed: () {
                setState(() {
                  _width = double.infinity;
                  // isClicked = !isClicked;
                  // if (!isClicked) {
                  //   _margin = 0;
                  // } else {
                  //   _margin = 50;
                  // }
                });
              },
            ),
            ElevatedButton(
              child: Text("animate Opacity"),
              onPressed: () {
                setState(() {
                  _opacity = 0;
                  // isClicked = !isClicked;
                  // if (!isClicked) {
                  //   _margin = 0;
                  // } else {
                  //   _margin = 50;
                  // }
                });
              },
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              child: Text(
                "hide Me",
                style: TextStyle(
                    backgroundColor: Colors.black,
                    color: Colors.white,
                    fontSize: 30),
              ),
              opacity: _opacity,
            )
          ],
        ),
      ),
    );
  }
}
