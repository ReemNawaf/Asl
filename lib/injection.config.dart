// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:asl/b_application/auth/auth_bloc.dart' as _i10;
import 'package:asl/b_application/auth/sign_in_form/bloc/sign_in_form_bloc.dart'
    as _i11;
import 'package:asl/b_application/user/user_form/user_form_bloc.dart' as _i12;
import 'package:asl/b_application/user/user_watcher_bloc.dart' as _i13;
import 'package:asl/c_domain/app_user/i_user_repo.dart' as _i8;
import 'package:asl/c_domain/auth/i_auth_facade.dart' as _i6;
import 'package:asl/d_infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'package:asl/d_infrastructure/core/firebase_injectable_module.dart'
    as _i14;
import 'package:asl/d_infrastructure/user/user_repository.dart' as _i9;
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i5.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i6.IAuthFacade>(() => _i7.FirebaseAuthFacade(
          firebaseAuth: gh<_i4.FirebaseAuth>(),
          googleSignIn: gh<_i3.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i8.IUserRepository>(
        () => _i9.UserRepository(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(gh<_i6.IAuthFacade>()));
    gh.factory<_i11.SignInFormBloc>(
        () => _i11.SignInFormBloc(gh<_i6.IAuthFacade>()));
    gh.factory<_i12.UserFormBloc>(
        () => _i12.UserFormBloc(gh<_i8.IUserRepository>()));
    gh.factory<_i13.UserWatcherBloc>(
        () => _i13.UserWatcherBloc(gh<_i8.IUserRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}
