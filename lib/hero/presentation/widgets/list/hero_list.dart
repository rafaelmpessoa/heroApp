import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hero_app/common/presentation/router.gr.dart';
import 'package:hero_app/constant.dart';
import 'package:hero_app/hero/domain/entities/hero.dart';
import 'package:hero_app/hero/presentation/widgets/hero_card.dart';
import 'package:hero_app/hero/presentation/widgets/hero_power_filter.dart';
import 'package:hero_app/hero/presentation/widgets/list/bloc/hero_list_bloc.dart';
import 'package:hero_app/strings.dart';

class HeroList extends StatefulWidget {
  @override
  _HeroListState createState() => _HeroListState();
}

class _HeroListState extends State<HeroList>
    with SingleTickerProviderStateMixin {
  final TextEditingController _controller = TextEditingController();
  AnimationController _animationController;
  Animation<Offset> _offsetAnimation;
  PowerStats _powerFilter = PowerStats(
    combat: 0,
    durability: 0,
    intelligence: 0,
    power: 0,
    speed: 0,
    strength: 0,
  );

  @override
  void initState() {
    super.initState();
    context.bloc<HeroListBloc>().add(HeroListEvent.onInit());
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..forward();
    _offsetAnimation = Tween<Offset>(
      begin: Offset(0.0, 1.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOutExpo,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: khpading),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: kvpading * 3,
          ),
          _buildHeaderTitle(context),
          const SizedBox(
            height: kvpading * 3,
          ),
          _buildFilterBox(),
          Flexible(
            child: BlocBuilder<HeroListBloc, HeroListState>(
              builder: (context, state) {
                return _buildHeroList(state);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildHeroList(HeroListState state) {
    return SlideTransition(
      position: _offsetAnimation,
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 500),
        child: state.error != null
            ? Center(
                child: Text(state.error),
              )
            : state.isLoading
                ? ListView(
                    key: ValueKey("skeletonList"),
                    children: List.generate(
                      3,
                      (_) => HeroCard(
                        isLoading: true,
                        hero: null,
                      ),
                    ),
                  )
                : state.heroes.length > 0
                    ? ListView.builder(
                        itemCount: state.heroes.length,
                        itemBuilder: (_, index) => InkWell(
                          onTap: () => ExtendedNavigator.of(context).push(
                            Routes.heroDetailPage,
                            arguments: HeroDetailPageArguments(
                              hero: state.heroes[index],
                            ),
                          ),
                          child: HeroCard(
                            hero: state.heroes[index],
                          ),
                        ),
                      )
                    : Center(
                        child: Text(
                          Strings.heroesNotFound,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
      ),
    );
  }

  Column _buildFilterBox() {
    return Column(
      children: [
        _buildSearchInput(),
        const SizedBox(
          height: kvpading * 2,
        ),
        HeroPowerFilter(
          _powerFilter,
          onChange: (v) {
            setState(
              () {
                _powerFilter = v;
              },
            );
            _handleFilter(_controller.text, v);
          },
        )
      ],
    );
  }

  TextField _buildSearchInput() {
    return TextField(
      controller: _controller,
      onChanged: (v) => _handleFilter(v, _powerFilter),
      decoration: InputDecoration(
        hintText: Strings.searchHint,
        suffixIcon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        enabledBorder: _inputBorder(opacity: 0.6),
        focusedBorder: _inputBorder(),
      ),
    );
  }

  OutlineInputBorder _inputBorder({double opacity = 1}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(100.0),
      ),
      borderSide:
          BorderSide(color: Colors.white.withOpacity(opacity), width: 1),
    );
  }

  Text _buildHeaderTitle(BuildContext context) {
    return Text(
      Strings.heroes,
      style: Theme.of(context).textTheme.headline4,
    );
  }

  void _handleFilter(String name, PowerStats powerStats) {
    context.bloc<HeroListBloc>().add(
          HeroListEvent.onSearch(
            powerStatsFilter: powerStats,
            name: name == "" ? "a" : name,
          ),
        );
  }
}
