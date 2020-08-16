import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeroPowerCircle extends StatefulWidget {
  final String iconPath;
  final Color color;
  final int power;
  final Size iconSize;
  final bool showValue;

  const HeroPowerCircle(
      {Key key,
      @required this.iconPath,
      @required this.color,
      @required this.power,
      this.iconSize,
      this.showValue = true})
      : super(key: key);

  @override
  _HeroPowerCircleState createState() => _HeroPowerCircleState();
}

class _HeroPowerCircleState extends State<HeroPowerCircle>
    with SingleTickerProviderStateMixin {
  double _fraction = 0.0;
  Animation<double> _animation;
  AnimationController _controller;
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    _animation = Tween(begin: 0.0, end: widget.power / 100).animate(_controller)
      ..addListener(() {
        setState(() {
          _fraction = _animation.value;
        });
      });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          widget.iconSize?.height == null ? 60 : widget.iconSize.height + 20,
      width: widget.iconSize?.width ?? 40,
      child: Column(
        children: [
          Container(
            height: widget.iconSize?.height ?? 40,
            width: widget.iconSize?.width ?? 40,
            child: CustomPaint(
              painter: CirclePainter(fraction: _fraction, color: widget.color),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: SvgPicture.asset(
                  widget.iconPath,
                  color: widget.color,
                ),
              ),
            ),
          ),
          widget.showValue
              ? Flexible(
                  child: Text(
                  (_fraction * 100).round().toString(),
                  style: TextStyle(color: widget.color, fontSize: 10),
                ))
              : SizedBox()
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class CirclePainter extends CustomPainter {
  final Color color;
  final double fraction;
  var _circlePaint;

  CirclePainter({this.fraction, this.color}) {
    _circlePaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset(0.0, 0.0) & size;

    canvas.drawArc(rect, -pi / 2, pi * 2 * fraction, false, _circlePaint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return oldDelegate.fraction != fraction;
  }
}
