import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tastyc/resource/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:tastyc/src/app/bloc/app_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
       buildWhen: (previous, current) =>
                previous.modeThem != current.modeThem ||
                previous.languageCode != current.languageCode,
      builder: (context, state) {
        return Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(40),
                decoration:
                    BoxDecoration(gradient: AppColors.current.primaryGradient),
                child: const Text('Home')),
           
          ]),
        );
      },
    );
  }
}
