import 'package:cloud_storage_app/ui/widgets/horizontalList.dart';
import 'package:cloud_storage_app/ui/widgets/infoBox.dart';
import 'package:cloud_storage_app/ui/widgets/roundedButton.dart';
import 'package:flutter/material.dart';
import 'clipPath.dart';
import 'gridList.dart';
import 'info.dart';
import 'infosBar.dart';
import 'package:percent_indicator/percent_indicator.dart';

class BodyContainer extends StatefulWidget {
  final Color bgColor;
  final RoundedButton roundedButton;
  final Widget widget;

  BodyContainer({this.bgColor, this.roundedButton, this.widget});
  @override
  _BodyContainerState createState() => _BodyContainerState();
}

class _BodyContainerState extends State<BodyContainer> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: 100,
          left: 0,
          child: Container(
            width: size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                CustomPaint(
                  size: Size(size.width, size.height),
                  painter: BNBCustomPainter(bgColor: widget.bgColor),
                ),
                widget.roundedButton,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
