import 'package:cloud_storage_app/ui/widgets/infoBox.dart';
import 'package:flutter/material.dart';

class VerticalList extends StatefulWidget {
  @override
  _VerticalListState createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 10),
      child: Container(
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            InfoBox(),
            InfoBox(),
            InfoBox(),
          ],
        ),
      ),
    );
  }
}
