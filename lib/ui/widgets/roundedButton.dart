import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  final List<Color> gradientColors;
  final double height;
  final double width;
  final Function press;
  final Icon icon;

  RoundedButton(
      {this.gradientColors, this.width, this.height, this.press, this.icon});
  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 0.6,
      child: FlatButton(
        onPressed: widget.press,
        child: ClipOval(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(1, 1), // changes position of shadow
                ),
              ],
              gradient: LinearGradient(
                colors: widget.gradientColors,
                begin: const FractionalOffset(6, 2),
                end: const FractionalOffset(0.1, 0.0),
                stops: [0.0, 1.0],
                //tileMode: TileMode.mirror,
                tileMode: TileMode.clamp,
              ),
            ),
            //color: Colors.white,
            height: widget.height,
            width: widget.width,
            child: widget.icon,
          ),
        ),
      ),
    );
  }
}
