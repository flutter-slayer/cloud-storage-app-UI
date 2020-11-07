import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';

class Storage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
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
        color: Color(0xff0e2444),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Aug',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.5,
                  animation: true,
                  lineHeight: 15.0,
                  animationDuration: 2000,
                  percent: 0.9,
                  center: Text("90.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Color(0xff9bf6ff),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Sep',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.5,
                  animation: true,
                  lineHeight: 15.0,
                  animationDuration: 2000,
                  percent: 0.5,
                  center: Text("50.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Color(0xff9bf6ff),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Oct',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.5,
                  animation: true,
                  lineHeight: 15.0,
                  animationDuration: 2000,
                  percent: 0.75,
                  center: Text("75.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Color(0xff9bf6ff),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Nov',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.5,
                  animation: true,
                  lineHeight: 15.0,
                  animationDuration: 2000,
                  percent: 0.85,
                  center: Text("85.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Color(0xff9bf6ff),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Dec',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.5,
                  animation: true,
                  lineHeight: 15.0,
                  animationDuration: 2000,
                  percent: 0.55,
                  center: Text("55.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Color(0xff9bf6ff),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Jan',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.5,
                  animation: true,
                  lineHeight: 15.0,
                  animationDuration: 2000,
                  percent: 0.75,
                  center: Text("75.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Color(0xff9bf6ff),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
