import 'package:cloud_storage_app/ui/screens/statScreen.dart';
import 'package:cloud_storage_app/ui/widgets/appbar.dart';
import 'package:cloud_storage_app/ui/widgets/bodyContainer.dart';
import 'package:cloud_storage_app/ui/widgets/gridList.dart';
import 'package:cloud_storage_app/ui/widgets/infosBar.dart';
import 'package:cloud_storage_app/ui/widgets/navbar.dart';
import 'package:cloud_storage_app/ui/widgets/roundedButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppsPage extends StatefulWidget {
  @override
  _AppsPageState createState() => _AppsPageState();
}

class _AppsPageState extends State<AppsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            AppNavBar(
              IconColor: Colors.grey[300],
            ),
            BodyContainer(
              bgColor: Color(0xffeff2f3),
              roundedButton: RoundedButton(
                height: 70,
                width: 70,
                gradientColors: [Color(0xff8e9eab), Color(0xffeef2f3)],
                icon: Icon(
                  Icons.person,
                  size: 40.0,
                  color: Color(0xff263da7).withOpacity(0.7),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1),
                child: InfosBar()),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: GridList()),
            BottomNavBarV2(
              bgColor: Color(0xffeef2f3).withOpacity(0.9),
              activeIconColor: Colors.white,
              deactiveIconColor: Colors.grey[300],
              syncButton: RoundedButton(
                height: 70,
                width: 70,
                gradientColors: [Color(0xff8e9eab), Color(0xffeef2f3)],
                press: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StatsPage())),
                icon: Icon(
                  Icons.sync,
                  size: 45,
                  color: Color(0xff263da7).withOpacity(0.7),
                ),
              ),
            ),
            //Text('hello world'),
          ],
        ),
        decoration: BoxDecoration(
          color: Color(0xffeef2f3).withOpacity(0.4),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
