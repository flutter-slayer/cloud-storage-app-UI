import 'package:cloud_storage_app/ui/screens/appsScreen.dart';
import 'package:cloud_storage_app/ui/widgets/appbar.dart';
import 'package:cloud_storage_app/ui/widgets/bodyContainer.dart';
import 'package:cloud_storage_app/ui/widgets/horizontalList.dart';
import 'package:cloud_storage_app/ui/widgets/navbar.dart';
import 'package:cloud_storage_app/ui/widgets/roundedButton.dart';
import 'package:cloud_storage_app/ui/widgets/searchBar.dart';
import 'package:cloud_storage_app/ui/widgets/storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsPage extends StatefulWidget {
  @override
  _StatsPageState createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xff091b33),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Stack(
          children: <Widget>[
            AppNavBar(
              IconColor: Color(0xffc0bdbd),
            ),
            BodyContainer(
              bgColor: Color(0xff0e2444),
              roundedButton: RoundedButton(
                height: 70,
                width: 70,
                gradientColors: [
                  Color(0xff0f2e55).withOpacity(0.9),
                  Color(0xff0c2444)
                ],
                icon: Icon(
                  Icons.person,
                  size: 45.0,
                  color: Color(0xff597081).withOpacity(0.7),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2,
                    left: MediaQuery.of(context).size.width * 0.08),
                child: SearchBar()),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: VerticalList()),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.53,
                  left: MediaQuery.of(context).size.width * 0.15),
              child: Text(
                'Storage',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.58,
                    left: MediaQuery.of(context).size.width * 0.08),
                child: Storage()),
            BottomNavBarV2(
              bgColor: Color(0xff0f2e55),
              activeIconColor: Color(0xff597081),
              deactiveIconColor: Color(0xffc0dbdb),
              syncButton: RoundedButton(
                height: 70,
                width: 70,
                gradientColors: [
                  Color(0xff0f2e55).withOpacity(0.9),
                  Color(0xff0c2444).withOpacity(0.9)
                ],
                press: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AppsPage())),
                icon: Icon(
                  Icons.sync,
                  size: 45,
                  color: Color(0xff597081).withOpacity(0.7),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
