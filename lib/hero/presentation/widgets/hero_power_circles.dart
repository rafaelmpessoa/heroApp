import 'package:flutter/material.dart';
import 'package:hero_app/assets.dart';
import 'package:hero_app/hero/domain/entities/hero.dart';
import 'package:hero_app/hero/presentation/widgets/hero_power_circle.dart';

class HeroPowerCircles extends StatelessWidget {
  final PowerStats powerStats;
  final Size iconSize;
  final bool showValue;

  const HeroPowerCircles(
      {@required this.powerStats, this.iconSize, this.showValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildPowerItem(
            iconPath: Assets.intelligenceIcon,
            powerColor: Colors.blue,
            powerValue: powerStats.intelligence),
        _buildPowerItem(
            iconPath: Assets.durabilityIcon,
            powerColor: Colors.blueGrey,
            powerValue: powerStats.durability),
        _buildPowerItem(
            iconPath: Assets.combatIconIcon,
            powerColor: Colors.brown,
            powerValue: powerStats.combat),
        _buildPowerItem(
            iconPath: Assets.powerIcon,
            powerColor: Colors.yellow,
            powerValue: powerStats.power),
        _buildPowerItem(
            iconPath: Assets.speedIcon,
            powerColor: Colors.green,
            powerValue: powerStats.speed),
        _buildPowerItem(
            iconPath: Assets.strengthIcon,
            powerColor: Colors.red,
            powerValue: powerStats.strength),
      ],
    );
  }

  Widget _buildPowerItem({
    @required String iconPath,
    @required int powerValue,
    @required Color powerColor,
  }) {
    return HeroPowerCircle(
      color: powerColor,
      iconPath: iconPath,
      power: powerValue,
      iconSize: iconSize,
      showValue: showValue ?? false,
    );
  }
}
