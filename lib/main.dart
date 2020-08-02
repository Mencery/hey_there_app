import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hey_there_app/randcolor/rgbo_random_color_generator.dart';

void main() {
  runApp(HeyThereApp());
}
class HeyThereApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainWidget();
  }
}
class MainWidget extends StatefulWidget {
  @override
  MainWidgetState createState() => MainWidgetState();
}
class MainWidgetState extends State<MainWidget> {
  var screenColor;
  var textColor;
  var rgbdRandomGenerator = RGBORandomColorGenerator();
  void initState(){
    super.initState();
    setColor();
  }
  @override
  Widget build(BuildContext context) {
  return MaterialApp( home: Scaffold(
    backgroundColor:screenColor,
    appBar: AppBar(
      title: Text('by Mencery', style: TextStyle(color: textColor),),
      backgroundColor: screenColor,
    ),
    body:GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        setState(() {
          setColor();
        });
      },
      child: Center(
        child: Text('Hey there', style: TextStyle(fontSize: 32.0,
        color: textColor)),
      ),
    ),
  ),
  );
  }
  void setColor() {
    screenColor = rgbdRandomGenerator.generateRandomColor();
    textColor = rgbdRandomGenerator.getConverseRandomColor();
  }
}