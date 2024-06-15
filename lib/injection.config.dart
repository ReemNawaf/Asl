// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:asl/b_application/auth/auth_bloc.dart' as _i18;
import 'package:asl/b_application/auth/sign_in_form/bloc/sign_in_form_bloc.dart'
    as _i19;
import 'package:asl/b_application/node/node_actor/node_actor_bloc.dart' as _i6;
import 'package:asl/b_application/node/node_form/node_form_bloc.dart' as _i8;
import 'package:asl/b_application/node/purchase_watcher/node_watcher_bloc.dart'
    as _i9;
import 'package:asl/b_application/tree/tree_actor/tree_actor_bloc.dart' as _i14;
import 'package:asl/b_application/tree/tree_form/tree_form_bloc.dart' as _i17;
import 'package:asl/b_application/tree/tree_watcher/tree_watcher_bloc.dart'
    as _i16;
import 'package:asl/b_application/user/user_form/user_form_bloc.dart' as _i20;
import 'package:asl/b_application/user/user_watcher_bloc.dart' as _i21;
import 'package:asl/c_domain/app_user/i_user_repo.dart' as _i12;
import 'package:asl/c_domain/auth/i_auth_facade.dart' as _i10;
import 'package:asl/c_domain/node/i_node_repository.dart' as _i7;
import 'package:asl/c_domain/tree/i_tree_repository.dart' as _i15;
import 'package:asl/d_infrastructure/auth/firebase_auth_facade.dart' as _i11;
import 'package:asl/d_infrastructure/core/firebase_injectable_module.dart'
    as _i22;
import 'package:asl/d_infrastructure/user/user_repository.dart' as _i13;
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
    gh.factory<_i6.NodeActorBloc>(
        () => _i6.NodeActorBloc(gh<_i7.INodeRepository>()));
    gh.factory<_i8.NodeFormBloc>(
        () => _i8.NodeFormBloc(gh<_i7.INodeRepository>()));
    gh.factory<_i9.PurchaseWatcherBloc>(
        () => _i9.PurchaseWatcherBloc(gh<_i7.INodeRepository>()));
    gh.lazySingleton<_i10.IAuthFacade>(() => _i11.FirebaseAuthFacade(
          firebaseAuth: gh<_i4.FirebaseAuth>(),
          googleSignIn: gh<_i3.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i12.IUserRepository>(
        () => _i13.UserRepository(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i14.TreeActorBloc>(
        () => _i14.TreeActorBloc(gh<_i15.ITreeRepository>()));
    gh.factory<_i16.TreeWatcherBloc>(
        () => _i16.TreeWatcherBloc(gh<_i15.ITreeRepository>()));
    gh.factory<_i17.TreeFormBloc>(
        () => _i17.TreeFormBloc(gh<_i15.ITreeRepository>()));
    gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(gh<_i10.IAuthFacade>()));
    gh.factory<_i19.SignInFormBloc>(
        () => _i19.SignInFormBloc(gh<_i10.IAuthFacade>()));
    gh.factory<_i20.UserFormBloc>(
        () => _i20.UserFormBloc(gh<_i12.IUserRepository>()));
    gh.factory<_i21.UserWatcherBloc>(
        () => _i21.UserWatcherBloc(gh<_i12.IUserRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i22.FirebaseInjectableModule {}
