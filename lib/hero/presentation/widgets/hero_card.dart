// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:hero_app/common/presentation/widgets/heart_icon.dart';
import 'package:hero_app/common/presentation/widgets/skeleton_loading.dart';
import 'package:hero_app/constant.dart';
import 'package:hero_app/hero/domain/entities/hero.dart' as domain;
import 'package:hero_app/hero/presentation/widgets/hero_power_circles.dart';

class HeroCard extends StatelessWidget {
  final domain.Hero hero;
  final bool isLoading;

  const HeroCard({@required this.hero, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Column(
            children: [
              SkeletonLoading(
                heigth: 150,
                width: double.infinity,
                borderRadius: 10,
              ),
              SizedBox(
                height: kvpading,
              )
            ],
          )
        : Container(
            height: 150,
            width: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  side: BorderSide(color: Colors.white, width: 1)),
              color: Colors.transparent,
              child: Row(
                children: [
                  Hero(
                    tag: hero.id,
                    child: Image.network(
                      hero.image.url,
                      errorBuilder: (_, __, ___) => Center(
                        child: Text("Not Found"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(kvpading),
                      child: _buildTextContent(hero),
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  Widget _buildTextContent(domain.Hero hero) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          child: HeartIcon(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(hero.name, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              hero.biography.fullName,
              style: TextStyle(fontSize: 10),
            ),
            Flexible(
                child: Text(
              hero.biography.placeOfBirth,
              style: TextStyle(fontSize: 10),
            )),
            HeroPowerCircles(
              powerStats: hero.powerstats,
              iconSize: Size(20, 20),
              showValue: true,
            )
          ],
        ),
      ],
    );
  }
}
