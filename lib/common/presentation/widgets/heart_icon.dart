import 'package:flutter/material.dart';
import 'package:hero_app/common/presentation/widgets/custom_icons.dart';

class HeartIcon extends StatefulWidget {
  @override
  _HeartIconState createState() => _HeartIconState();
}

class _HeartIconState extends State<HeartIcon> {
  bool _isLiked = false;

  void _onLikePressed() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onLikePressed,
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        switchInCurve: Curves.ease,
        switchOutCurve: Curves.easeOut,
        child: _isLiked
            ? Icon(
                MyFlutterApp.heart,
                key: ValueKey("liked"),
                color: Color(0xFFff6150),
              )
            : Icon(
                MyFlutterApp.heart_empty,
                key: ValueKey("unLiked"),
              ),
      ),
    );
  }
}
