// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:gk_gecko_test_ancient/extra/injection/register_module.dart'
    as _i19;
import 'package:gk_gecko_test_ancient/features/auth/application/auth/auth_bloc.dart'
    as _i17;
import 'package:gk_gecko_test_ancient/features/auth/application/sign_in_form/sign_in_form_bloc.dart'
    as _i15;
import 'package:gk_gecko_test_ancient/features/auth/application/sign_out/sign_out_bloc.dart'
    as _i16;
import 'package:gk_gecko_test_ancient/features/auth/domain/i_auth_repository.dart'
    as _i13;
import 'package:gk_gecko_test_ancient/features/auth/infrastructure/auth_interceptor.dart'
    as _i18;
import 'package:gk_gecko_test_ancient/features/auth/infrastructure/auth_remote_service.dart'
    as _i6;
import 'package:gk_gecko_test_ancient/features/auth/infrastructure/auth_repository.dart'
    as _i14;
import 'package:gk_gecko_test_ancient/features/auth/infrastructure/credentials_storage/credentials_storage.dart'
    as _i10;
import 'package:gk_gecko_test_ancient/features/auth/infrastructure/credentials_storage/secure_credentials_storage.dart'
    as _i11;
import 'package:gk_gecko_test_ancient/features/home/core/application/home_bloc.dart'
    as _i12;
import 'package:gk_gecko_test_ancient/features/home/core/domain/i_home_repository.dart'
    as _i8;
import 'package:gk_gecko_test_ancient/features/home/core/infrastructure/home_remote_service.dart'
    as _i7;
import 'package:gk_gecko_test_ancient/features/home/core/infrastructure/home_repository.dart'
    as _i9;
import 'package:hive_flutter/hive_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

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
    final registerModule = _$RegisterModule();
    await gh.lazySingletonAsync<_i3.Box<dynamic>>(
      () => registerModule.openBox,
      preResolve: true,
    );
    await gh.lazySingletonAsync<_i4.Dio>(
      () => registerModule.httpClient,
      preResolve: true,
    );
    gh.lazySingleton<_i5.FlutterSecureStorage>(
        () => registerModule.flutterSecureStorage);
    gh.lazySingleton<_i6.IAuthRemoteService>(
        () => _i6.AuthRemoteService(gh<_i4.Dio>()));
    gh.lazySingleton<_i7.IAuthRemoteService>(
        () => _i7.AuthRemoteService(gh<_i4.Dio>()));
    gh.lazySingleton<_i8.IHomeRepository>(
        () => _i9.HomeRepository(gh<_i7.IAuthRemoteService>()));
    gh.lazySingleton<_i10.CredentialsStorage>(
        () => _i11.SecureCredentialsStorage(gh<_i5.FlutterSecureStorage>()));
    gh.factory<_i12.HomeBloc>(() => _i12.HomeBloc(gh<_i8.IHomeRepository>()));
    gh.lazySingleton<_i13.IAuthRepository>(() => _i14.AuthRepository(
          gh<_i10.CredentialsStorage>(),
          gh<_i6.IAuthRemoteService>(),
        ));
    gh.factory<_i15.SignInFormBloc>(
        () => _i15.SignInFormBloc(gh<_i13.IAuthRepository>()));
    gh.factory<_i16.SignOutBloc>(
        () => _i16.SignOutBloc(gh<_i13.IAuthRepository>()));
    gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(gh<_i13.IAuthRepository>()));
    gh.factory<_i18.AuthInterceptor>(
        () => _i18.AuthInterceptor(gh<_i13.IAuthRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i19.RegisterModule {}
