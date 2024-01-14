import 'package:auto_route/auto_route.dart';
import 'package:tastyc/features/auth/presentation/bloc/sign_cubit.dart';
import 'package:tastyc/resource/styles/app_colors.dart';
import 'package:tastyc/src/core/navigation/routes/AppRouter.gr.dart';
import 'package:tastyc/src/core/widget/loading/full_over_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignPage extends StatelessWidget {
  final singInFormKey = GlobalKey<FormState>();

  SignPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<SignCubit>(context);
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            padding: const EdgeInsets.all(40),
            color: AppColors.current.primaryColor,
            child: const Text('data')),
        Hero(
          tag: 'test',
          child: BlocConsumer<SignCubit, SignState>(
            listener: (context, state) {
              if (state is OtpStep) {
                context.router.push(OtpRoute());
              }
            },
            buildWhen: (ps, cs) =>
                cs is SignLoading && (cs.type == 1 || cs.type == 0),
            builder: (context, state) {
              if (state is SignLoading && state.type == 1) {
                return const FullOverLoading(
                  isDialog: false,
                );
              } else {
                return ElevatedButton(
                  child: const Text('login'),
                  onPressed: () {
                    cubit.toOtp();
                  },
                );
              }
            },
          ),
        ),
      ]),
    );
  }
}
