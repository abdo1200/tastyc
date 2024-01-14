import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tastyc/features/home/presentation/mangment/main_cubit.dart';
import 'package:tastyc/src/injector.dart';

import '../../../../resource/styles/app_colors.dart';
import '../../../../src/app/bloc/app_bloc.dart';
import '../../../../src/core/navigation/routes/AppRouter.gr.dart';

@RoutePage()
class HomeContainerPage extends StatelessWidget {
  const HomeContainerPage({Key? key, this.callDialog}) : super(key: key);
  final Function(BuildContext mContext)? callDialog;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (callDialog != null) {
        callDialog!.call(context);
      }
    });
    return BlocProvider(
      create: (context) => getIt<MainCubit>(),
      child: Builder(builder: (context) {
        return _buildPage(context);
      }),
    );
  }

  Widget _buildPage(BuildContext context) {
    var mainBloc = BlocProvider.of<MainCubit>(context);
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
    //     .copyWith(statusBarColor: Colors.transparent));

    return BlocConsumer<AppBloc, AppState>(
      listener: (context, state) {
        if (state is ChangeSettings) {
          mainBloc.refreshPage(0);
          mainBloc.refreshPage(1);
          mainBloc.refreshPage(2);
          mainBloc.refreshPage(3);
        }
      },
      builder: (context, state) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            body: AutoTabsRouter(
                routes: const [
                  HomeRoute(),
                  NotificationRoute(),
                  OrdersRoute(),
                  SettingsRoute(),
                ],
                homeIndex: 0,
                transitionBuilder: (context, child, animation) =>
                    FadeTransition(
                      opacity: animation,
                      // the passed child is technically our animated selected-tab page
                      child: child,
                    ),
                builder: (context, child) {
                  {
                    final tabsRouter = AutoTabsRouter.of(context);
                    return BlocListener<MainCubit, MainState>(
                      listener: (context, state) {
                    
                        if (state is ChangeSelect) {
                          tabsRouter.setActiveIndex(state.index);
                        }
                        if (state is MainInitial) {
                          if (callDialog != null) {
                          
                            callDialog!.call(context);
                          }
                        }
                      },
                      child: Scaffold(
                        body: child,
                        bottomNavigationBar: Container(
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                              boxShadow: kElevationToShadow[4],
                              color: Theme.of(context).bottomAppBarColor,
                              border: Border(
                                  top: BorderSide(
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.05),
                                      width: 1.w))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0.w),
                              topRight: Radius.circular(0.w),
                            ),
                            child: BottomNavigationBar(
                              showUnselectedLabels: true,
                              currentIndex: tabsRouter.activeIndex,
                              onTap: (index) {
                                // if (!context.read<AppBloc>().isLogin &&
                                //     index != 0 &&
                                //     index != 4) {
                                //   // CallDialog.showConfirmDialog(context,
                                //   //     titleMassage: S.current.login,
                                //   //     actionTitle: S.current.login,
                                //   //     bodyMassage: S.current.login_message,
                                //   //     onClick: () {
                                //   //       context.router.push(SignRoute());
                                //   //     });
                                // } else {
                                //   print(index);
                                //   tabsRouter.setActiveIndex(index);
                                //   mainBloc.refreshPage(index);
                                // }
                                tabsRouter.setActiveIndex(index);
                                  mainBloc.refreshPage(index);
            
                                // if (index == 0) {
                                //   SystemChrome.setSystemUIOverlayStyle(
                                //       SystemUiOverlayStyle.light.copyWith(
                                //           statusBarColor: Colors.transparent));
                                // } else {
                                //   SystemChrome.setSystemUIOverlayStyle(
                                //       SystemUiOverlayStyle.dark.copyWith(
                                //           statusBarColor: Colors.transparent));
                                //
                                // }
                              },
                              type: BottomNavigationBarType.fixed,
                              selectedItemColor:
                                  AppColors.current.primaryColor,
                              unselectedItemColor:
                                  AppColors.current.secondaryTextColor,
                              items: <BottomNavigationBarItem>[
                                BottomNavigationBarItem(
                                  activeIcon: Icon(
                                    Icons.home,
                                    size: 24.w,
                                  ),
                                  icon: Icon(
                                    Icons.home_outlined,
                                    size: 24.w,
                                  ),
                                  label: 'home',
                                ),
                                BottomNavigationBarItem(
                                  activeIcon: Icon(
                                    Icons.home,
                                    size: 24.w,
                                  ),
                                  icon: Icon(
                                    Icons.home_outlined,
                                    size: 24.w,
                                  ),
                                  label: 'home',
                                ),
                                BottomNavigationBarItem(
                                  activeIcon: Icon(
                                    Icons.home,
                                    size: 24.w,
                                  ),
                                  icon: Icon(
                                    Icons.home_outlined,
                                    size: 24.w,
                                  ),
                                  label: 'home',
                                ),
                                BottomNavigationBarItem(
                                  activeIcon: Icon(
                                    Icons.home,
                                    size: 24.w,
                                  ),
                                  icon: Icon(
                                    Icons.home_outlined,
                                    size: 24.w,
                                  ),
                                  label: 'home',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                }));
      },
    );
  }
}
