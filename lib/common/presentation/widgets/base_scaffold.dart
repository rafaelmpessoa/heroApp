import 'package:flutter/material.dart';
import 'package:hero_app/constant.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final Color linearBackgroundColor;

  const BaseScaffold({Key key, @required this.body, this.linearBackgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: linearBackgroundColor,
      decoration: linearBackgroundColor == null
          ? BoxDecoration(gradient: kBackgroudColor)
          : null,
      child: Scaffold(
        body: body,
      ),
    );
  }
}
