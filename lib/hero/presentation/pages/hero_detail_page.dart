import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hero_app/common/presentation/widgets/base_scaffold.dart';
import 'package:hero_app/constant.dart';
import 'package:hero_app/hero/domain/entities/hero.dart' as domain;
import 'package:hero_app/hero/presentation/widgets/hero_power_circles.dart';

class HeroDetailPage extends StatelessWidget {
  final domain.Hero hero;

  const HeroDetailPage(this.hero);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      linearBackgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: SliverDelegate(
              400.0,
              hero,
            ),
          ),
          SliverToBoxAdapter(
            child: _buildHeroDetails(),
          )
        ],
      ),
    );
  }

  Container _buildHeroDetails() {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: khpading / 2),
      child: Column(
        children: [
          Text(hero.biography.fullName),
          const SizedBox(
            height: kvpading,
          ),
          Text(hero.biography.placeOfBirth),
          const SizedBox(
            height: kvpading,
          ),
          Text(hero.appearance.gender),
          Text(hero.appearance.race),
          Text(
            hero.work.occupation,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: kvpading * 2,
          ),
          HeroPowerCircles(
            powerStats: hero.powerstats,
            showValue: true,
          ),
        ],
      ),
    );
  }
}

class SliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeigth;
  final domain.Hero hero;
  final double _roundedContainer = 50;

  SliverDelegate(this.expandedHeigth, this.hero);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Hero(
          tag: hero.id,
          child: Image.network(
            hero.image.url,
            width: MediaQuery.of(context).size.width,
            height: expandedHeigth,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 30,
          left: 15,
          child: InkWell(
            onTap: () => ExtendedNavigator.of(context).pop(),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeigth - _roundedContainer - shrinkOffset,
          left: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: _roundedContainer,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: [0, .6],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black.withOpacity(.8), Colors.black]),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
        ),
        Positioned(
          left: 30,
          top: expandedHeigth - 150 - shrinkOffset,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hero.name,
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                hero.biography.firstAppearance,
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => expandedHeigth;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
