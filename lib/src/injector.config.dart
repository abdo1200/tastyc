// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;
import 'package:tastyc/features/auth/presentation/bloc/sign_cubit.dart' as _i10;
import 'package:tastyc/features/home/presentation/home_page/bloc/home_cubit.dart'
    as _i4;
import 'package:tastyc/features/home/presentation/mangment/main_cubit.dart'
    as _i5;
import 'package:tastyc/features/home/presentation/notification/bloc/notification_cubit.dart'
    as _i6;
import 'package:tastyc/features/home/presentation/orders/bloc/orders_cubit.dart'
    as _i7;
import 'package:tastyc/features/home/presentation/settings/bloc/settings_cubit.dart'
    as _i8;
import 'package:tastyc/src/app/bloc/app_bloc.dart' as _i14;
import 'package:tastyc/src/core/navigation/routes/AppRouter.dart' as _i3;
import 'package:tastyc/src/core/network/access_token_interceptor.dart' as _i13;
import 'package:tastyc/src/core/network/auth_interceptor.dart' as _i15;
import 'package:tastyc/src/core/preferences/PreferencesHelper.dart' as _i11;
import 'package:tastyc/src/core/preferences/Prefs.dart' as _i12;
import 'package:tastyc/src/di/AppModule.dart' as _i17;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i3.AppRouter>(appModule.appRouter);
    gh.factory<_i4.HomeCubit>(() => _i4.HomeCubit());
    gh.factory<_i5.MainCubit>(() => _i5.MainCubit());
    gh.factory<_i6.NotificationCubit>(() => _i6.NotificationCubit());
    gh.factory<_i7.OrdersCubit>(() => _i7.OrdersCubit());
    gh.factory<_i8.SettingsCubit>(() => _i8.SettingsCubit());
    await gh.factoryAsync<_i9.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.factory<_i10.SignCubit>(() => _i10.SignCubit());
    gh.singleton<String>(
      appModule.currentPlatform,
      instanceName: 'currentPlatform',
    );
    gh.factory<_i11.PreferencesHelper>(
        () => appModule.getPreferencesHelper(gh<_i9.SharedPreferences>()));
    gh.factory<_i12.Prefs>(() => _i12.Prefs(gh<_i11.PreferencesHelper>()));
    await gh.singletonAsync<String>(
      () => appModule.getLanguageCode(gh<_i12.Prefs>()),
      instanceName: 'languageCode',
      preResolve: true,
    );
    gh.factory<_i13.AccessTokenInterceptor>(
        () => _i13.AccessTokenInterceptor(gh<_i12.Prefs>()));
    gh.factory<_i14.AppBloc>(() => _i14.AppBloc(
          prefs: gh<_i12.Prefs>(),
          languageCode: gh<String>(),
          modeThem: gh<String>(),
          hasOrder: gh<bool>(),
        ));
    gh.factory<_i15.AuthInterceptor>(() => _i15.AuthInterceptor(
          gh<_i12.Prefs>(),
          gh<_i3.AppRouter>(),
        ));
    await gh.factoryAsync<_i16.Dio>(
      () => appModule.dio(
        gh<String>(instanceName: 'languageCode'),
        gh<_i13.AccessTokenInterceptor>(),
        gh<_i15.AuthInterceptor>(),
      ),
      preResolve: true,
    );
    return this;
  }
}

class _$AppModule extends _i17.AppModule {}
