// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:asl/b_application/auth/auth_bloc.dart' as _i21;
import 'package:asl/b_application/auth/sign_in_form/bloc/sign_in_form_bloc.dart'
    as _i22;
import 'package:asl/b_application/node/node_actor/node_actor_bloc.dart' as _i18;
import 'package:asl/b_application/node/node_form/node_form_bloc.dart' as _i19;
import 'package:asl/b_application/node/node_watcher/node_watcher_bloc.dart'
    as _i20;
import 'package:asl/b_application/tree/tree_actor/tree_actor_bloc.dart' as _i15;
import 'package:asl/b_application/tree/tree_draw/tree_draw_bloc.dart' as _i3;
import 'package:asl/b_application/tree/tree_form/tree_form_bloc.dart' as _i17;
import 'package:asl/b_application/tree/tree_watcher/tree_watcher_bloc.dart'
    as _i16;
import 'package:asl/b_application/user/user_form/user_form_bloc.dart' as _i23;
import 'package:asl/b_application/user/user_watcher_bloc.dart' as _i24;
import 'package:asl/c_domain/app_user/i_user_repo.dart' as _i13;
import 'package:asl/c_domain/auth/i_auth_facade.dart' as _i9;
import 'package:asl/c_domain/node/i_node_repository.dart' as _i11;
import 'package:asl/c_domain/tree/i_tree_repository.dart' as _i7;
import 'package:asl/d_infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'package:asl/d_infrastructure/core/firebase_injectable_module.dart'
    as _i25;
import 'package:asl/d_infrastructure/node/node_repository.dart' as _i12;
import 'package:asl/d_infrastructure/trees/tree_repository.dart' as _i8;
import 'package:asl/d_infrastructure/user/user_repository.dart' as _i14;
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
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
    gh.factory<_i3.TreeDrawBloc>(() => _i3.TreeDrawBloc());
    gh.lazySingleton<_i4.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i5.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i6.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i7.ITreeRepository>(
        () => _i8.TreeRepository(gh<_i6.FirebaseFirestore>()));
    gh.lazySingleton<_i9.IAuthFacade>(() => _i10.FirebaseAuthFacade(
          firebaseAuth: gh<_i5.FirebaseAuth>(),
          googleSignIn: gh<_i4.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i11.INodeRepository>(
        () => _i12.NodeRepository(gh<_i6.FirebaseFirestore>()));
    gh.lazySingleton<_i13.IUserRepository>(
        () => _i14.UserRepository(gh<_i6.FirebaseFirestore>()));
    gh.factory<_i15.TreeActorBloc>(
        () => _i15.TreeActorBloc(gh<_i7.ITreeRepository>()));
    gh.factory<_i16.TreeWatcherBloc>(
        () => _i16.TreeWatcherBloc(gh<_i7.ITreeRepository>()));
    gh.factory<_i17.TreeFormBloc>(
        () => _i17.TreeFormBloc(gh<_i7.ITreeRepository>()));
    gh.factory<_i18.NodeActorBloc>(
        () => _i18.NodeActorBloc(gh<_i11.INodeRepository>()));
    gh.factory<_i19.NodeFormBloc>(
        () => _i19.NodeFormBloc(gh<_i11.INodeRepository>()));
    gh.factory<_i20.NodeWatcherBloc>(
        () => _i20.NodeWatcherBloc(gh<_i11.INodeRepository>()));
    gh.factory<_i21.AuthBloc>(() => _i21.AuthBloc(gh<_i9.IAuthFacade>()));
    gh.factory<_i22.SignInFormBloc>(
        () => _i22.SignInFormBloc(gh<_i9.IAuthFacade>()));
    gh.factory<_i23.UserFormBloc>(
        () => _i23.UserFormBloc(gh<_i13.IUserRepository>()));
    gh.factory<_i24.UserWatcherBloc>(
        () => _i24.UserWatcherBloc(gh<_i13.IUserRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i25.FirebaseInjectableModule {}
