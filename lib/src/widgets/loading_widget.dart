import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import '../app.dart';

class LoadingWidget extends StatelessWidget {
  final double size;
  final Color color;
  final bool hasLogo;
  const LoadingWidget({Key key, this.color,  this.size = 64, this.hasLogo = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'LoadingWidget',
      child: hasLogo 
      ? Container(
        margin: EdgeInsets.all(8),
        width: Get.width,
        height: Get.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('images/logo-light.png'),
            Container(
              margin: EdgeInsets.only(top: 12, left: 2),
              width: size,
              height: size,
              child: LoadingIndicator(
                indicatorType: Indicator.semiCircleSpin,
                color: Colors.black,
              ),
            ),
          ],
        )
      )
      : Container(
        margin: EdgeInsets.all(8),
        width: size,
        height: size,
        child: LoadingIndicator(
          indicatorType: Indicator.orbit,
          color: color ?? Colors.blue[200],
        ),
      ),
    );
  }
}