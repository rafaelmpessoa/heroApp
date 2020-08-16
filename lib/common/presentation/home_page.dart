import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hero_app/common/presentation/widgets/base_scaffold.dart';
import 'package:hero_app/hero/presentation/widgets/list/bloc/hero_list_bloc.dart';
import 'package:hero_app/hero/presentation/widgets/list/hero_list.dart';
import 'package:hero_app/injection.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: BlocProvider(
        create: (context) => getIt<HeroListBloc>(),
        child: HeroList(),
      ),
    );
  }
}
