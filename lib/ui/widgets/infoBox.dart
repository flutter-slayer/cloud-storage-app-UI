import 'package:cloud_storage_app/ui/widgets/info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class InfoBox extends StatefulWidget {
  @override
  _InfoBoxState createState() => _InfoBoxState();
}

class _InfoBoxState extends State<InfoBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Info(),
        ),
        width: 250,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(100),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500].withOpacity(0.1),
              offset: Offset(-6.0, -6.0),
              blurRadius: 16.0,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              offset: Offset(6.0, 6.0),
              blurRadius: 16.0,
            ),
          ],
//          gradient: LinearGradient(
//              colors: [Color(0xff0e2444), Color(0xff091b33)],
//              begin: Alignment.topCenter,
//              end: Alignment.bottomCenter),
          color: Color(0xff0e2444),
        ),
      ),
    );
  }
}
