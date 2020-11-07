import 'package:cloud_storage_app/ui/widgets/roundedButton.dart';
import 'package:flutter/material.dart';
import 'clipPath.dart';

class BottomNavBarV2 extends StatefulWidget {
  final bgColor;
  final Color activeIconColor;
  final Color deactiveIconColor;
  final RoundedButton syncButton;
  BottomNavBarV2(
      {this.bgColor,
      this.activeIconColor,
      this.deactiveIconColor,
      this.syncButton});
  @override
  _BottomNavBarV2State createState() => _BottomNavBarV2State();
}

class _BottomNavBarV2State extends State<BottomNavBarV2> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: size.width,
            height: 70,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                CustomPaint(
                  size: Size(size.width, 80),
                  painter: BNBCustomPainter(bgColor: widget.bgColor),
                ),
                widget.syncButton,
                Container(
                  width: size.width,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        iconSize: 40.0,
                        icon: Icon(
                          Icons.home,
                          color: currentIndex == 0
                              ? widget.deactiveIconColor
                              : widget.activeIconColor,
                        ),
                        onPressed: () {
                          setBottomBarIndex(0);
                        },
                        splashColor: Colors.white,
                      ),
                      Container(
                        width: size.width * 0.20,
                      ),
                      IconButton(
                          iconSize: 40.0,
                          icon: Icon(
                            Icons.person_pin,
                            color: currentIndex == 2
                                ? widget.deactiveIconColor
                                : widget.activeIconColor,
                          ),
                          onPressed: () {
                            setBottomBarIndex(2);
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
