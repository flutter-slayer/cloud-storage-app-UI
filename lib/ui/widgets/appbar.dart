import 'package:flutter/material.dart';

class AppNavBar extends StatefulWidget {
  final Color IconColor;

  AppNavBar({this.IconColor});
  @override
  _AppNavBarState createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                iconSize: 40.0,
                icon: Icon(
                  Icons.cloud,
                  color: widget.IconColor,
                ),
                onPressed: null),
            IconButton(
                iconSize: 40.0,
                icon: Icon(
                  Icons.dehaze,
                  color: widget.IconColor,
                ),
                onPressed: null),
          ],
        ),
      ),
    );
  }
}
