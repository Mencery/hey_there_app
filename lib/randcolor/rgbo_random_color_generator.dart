import 'dart:ui';
import 'dart:math';
import 'package:hey_there_app/randcolor/random_color_generator.dart';
///
///  class for generation random RGBO colors
///
class RGBORandomColorGenerator implements RandColorGenerator {
  static const  MAX_COLOR_VALUES = 255;
  var r, g, b, o;
  RGBORandomColorGenerator () {
    r = 0;
    g = 0;
    b = 0;
    o = 1.0;
  }
  ///
  /// get converse color of generated in generateRandomColor()
  ///
  @override
  Color generateRandomColor() {
    r = Random().nextInt(MAX_COLOR_VALUES-1) + 1;
    g = Random().nextInt(MAX_COLOR_VALUES-1) + 1;
    b = Random().nextInt(MAX_COLOR_VALUES-1) + 1;
    return Color.fromRGBO(r, g, b, o);
  }
  ///
  /// generates random color
  ///
  @override
  Color getConverseRandomColor() {
    return Color.fromRGBO(MAX_COLOR_VALUES - r,
        MAX_COLOR_VALUES - g, MAX_COLOR_VALUES - b, o);
  }
}