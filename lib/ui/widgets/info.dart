import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Icon(
                  Icons.folder_shared,
                  size: 60,
                  color: Colors.deepPurple,
                ),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[700].withOpacity(0.1),
                      offset: Offset(-6.0, -6.0),
                      blurRadius: 16.0,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: Offset(6.0, 6.0),
                      blurRadius: 16.0,
                    ),
                  ],
                  color: Color(0xff0e2444),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'MyDocs',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400]),
                  ),
                  Text(
                    '3248 files,26 folders',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0, top: 30.0),
          child: new LinearPercentIndicator(
            width: MediaQuery.of(context).size.width * 0.5,
            animation: true,
            lineHeight: 15.0,
            animationDuration: 2000,
            percent: 0.9,
            center: Text("90.0%"),
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Color(0xff9bf6ff),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 120, top: 8.0),
          child: Text(
            '60 GB free',
            style: TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
