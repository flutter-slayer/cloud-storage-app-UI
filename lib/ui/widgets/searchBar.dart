import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey)),
              ),
            ),
            Icon(
              Icons.search,
              size: 30,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      width: 350,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
            colors: [Color(0xff091B33), Color(0xff0F2E55)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter),
      ),
    );
  }
}
