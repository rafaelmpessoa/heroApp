import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hero_app/assets.dart';
import 'package:hero_app/constant.dart';
import 'package:hero_app/hero/domain/entities/hero.dart';
import 'package:hero_app/strings.dart';

class HeroPowerFilter extends StatefulWidget {
  final PowerStats powerStatsFilter;
  final ValueChanged<PowerStats> onChange;

  const HeroPowerFilter(this.powerStatsFilter, {@required this.onChange});

  @override
  _HeroPowerFilterState createState() => _HeroPowerFilterState();
}

class _HeroPowerFilterState extends State<HeroPowerFilter>
    with SingleTickerProviderStateMixin {
  double _intelligence;
  double _strength;
  double _speed;
  double _durability;
  double _power;
  double _combat;
  bool _isFiltering = false;

  @override
  void initState() {
    super.initState();
    _intelligence = widget.powerStatsFilter.intelligence.toDouble();
    _strength = widget.powerStatsFilter.strength.toDouble();
    _speed = widget.powerStatsFilter.speed.toDouble();
    _durability = widget.powerStatsFilter.durability.toDouble();
    _power = widget.powerStatsFilter.power.toDouble();
    _combat = widget.powerStatsFilter.combat.toDouble();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: _handleFilter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Strings.powers,
              ),
              SizedBox(
                width: kvpading,
              ),
              _isFiltering
                  ? Icon(Icons.arrow_drop_up)
                  : Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
        SizedBox(
          width: khpading,
        ),
        AnimatedSize(
          alignment: Alignment.bottomCenter,
          curve: Curves.easeInOut,
          vsync: this,
          duration: Duration(milliseconds: 500),
          child: _isFiltering
              ? Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildSliders(),
                      FlatButton(
                        onPressed: _handleApply,
                        child: Text(
                          Strings.apply.toUpperCase(),
                          style: TextStyle(color: kTextColor),
                        ),
                      )
                    ],
                  ),
                )
              : SizedBox(),
        ),
      ],
    );
  }

  Widget _buildSliders() {
    return Column(
      children: [
        _buildPowerSliderItem(
          Assets.intelligenceIcon,
          callback: _changeIntelligence,
          color: Colors.blue,
          value: _intelligence,
        ),
        _buildPowerSliderItem(
          Assets.durabilityIcon,
          callback: _changeDurability,
          color: Colors.blueGrey,
          value: _durability,
        ),
        _buildPowerSliderItem(
          Assets.combatIconIcon,
          callback: _changeCombat,
          color: Colors.brown,
          value: _combat,
        ),
        _buildPowerSliderItem(
          Assets.powerIcon,
          callback: _changePower,
          color: Colors.yellow,
          value: _power,
        ),
        _buildPowerSliderItem(
          Assets.speedIcon,
          callback: _changeSpeed,
          color: Colors.green,
          value: _speed,
        ),
        _buildPowerSliderItem(
          Assets.strengthIcon,
          callback: _changeStrength,
          color: Colors.red,
          value: _strength,
        )
      ],
    );
  }

  Widget _buildPowerSliderItem(String iconPath,
      {@required Function callback,
      @required Color color,
      @required double value}) {
    return Row(
      children: [
        SvgPicture.asset(
          iconPath,
          color: color,
          height: 30,
        ),
        Expanded(
          child: Slider(
            activeColor: color,
            inactiveColor: color,
            onChanged: callback,
            value: value,
            min: 0,
            max: 100,
          ),
        ),
      ],
    );
  }

  void _changeIntelligence(double value) {
    setState(() {
      _intelligence = value;
    });
  }

  void _changePower(double value) {
    setState(() {
      _power = value;
    });
  }

  void _changeSpeed(double value) {
    setState(() {
      _speed = value;
    });
  }

  void _changeStrength(double value) {
    setState(() {
      _strength = value;
    });
  }

  void _changeDurability(double value) {
    setState(() {
      _durability = value;
    });
  }

  void _changeCombat(double value) {
    setState(() {
      _combat = value;
    });
  }

  void _handleFilter() {
    setState(() {
      _isFiltering = !_isFiltering;
    });
  }

  void _handleApply() {
    setState(() {
      _isFiltering = false;
    });

    widget.onChange(
      PowerStats(
        combat: _combat.round(),
        durability: _durability.round(),
        intelligence: _intelligence.round(),
        power: _power.round(),
        speed: _speed.round(),
        strength: _strength.round(),
      ),
    );
  }
}
