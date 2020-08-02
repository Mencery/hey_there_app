import 'dart:ui';
///
/// abstract class for generation random colors
///
abstract class RandColorGenerator {
///
/// generates random color
///
Color generateRandomColor();
///
/// get converse color of generated in generateRandomColor()
///
Color getConverseRandomColor();
}