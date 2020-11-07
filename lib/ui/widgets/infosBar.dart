import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfosBar extends StatefulWidget {
  @override
  _InfosBarState createState() => _InfosBarState();
}

class _InfosBarState extends State<InfosBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.info_outline,
                  size: 25.0,
                  color: Colors.blueGrey[300],
                ),
                Text(
                  'Recents',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey[200],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.list,
                  size: 30.0,
                  color: Colors.blueGrey[200],
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.grid_on,
                  size: 25.0,
                  color: Colors.blueGrey[200],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
