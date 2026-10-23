// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../Data/data%20source/auth_remote_data_source.dart' as _i267;
import '../../Data/repo/auth_repo_impl.dart' as _i636;
import '../../Domain/repo/auth_repo.dart' as _i613;
import '../../Domain/UseCase/sign_in_use_case.dart' as _i914;
import '../../Domain/UseCase/sign_up_use_case.dart' as _i95;
import '../../Presentation/cubit/auth_cubit.dart' as _i604;
import 'app_module.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.factory<_i59.FirebaseAuth>(() => appModule.firebaseAuth);
    gh.lazySingleton<_i267.AuthRemoteDataSource>(
      () => _i267.AuthRemoteDataSource(gh<_i59.FirebaseAuth>()),
    );
    gh.lazySingleton<_i613.AuthRepo>(
      () => _i636.AuthRepoImpl(gh<_i267.AuthRemoteDataSource>()),
    );
    gh.factory<_i914.SignInUseCase>(
      () => _i914.SignInUseCase(authRepo: gh<_i613.AuthRepo>()),
    );
    gh.factory<_i95.SignUpUseCase>(
      () => _i95.SignUpUseCase(authRepo: gh<_i613.AuthRepo>()),
    );
    gh.factory<_i604.AuthCubit>(
      () => _i604.AuthCubit(
        signInUseCase: gh<_i914.SignInUseCase>(),
        signUpUseCase: gh<_i95.SignUpUseCase>(),
      ),
    );
    return this;
  }
}

class _$AppModule extends _i460.AppModule {}
