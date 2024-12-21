// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:asl/b_application/auth_bloc/auth_bloc.dart' as _i23;
import 'package:asl/b_application/auth_bloc/sign_in_form/bloc/sign_in_form_bloc.dart'
    as _i24;
import 'package:asl/b_application/node_bloc/node_actor/node_actor_bloc.dart'
    as _i20;
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart'
    as _i21;
import 'package:asl/b_application/node_bloc/node_watcher/node_watcher_bloc.dart'
    as _i22;
import 'package:asl/b_application/share_bloc/share_option/share_option_bloc.dart'
    as _i4;
import 'package:asl/b_application/tree_bloc/current_tree/current_tree_bloc.dart'
    as _i3;
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart'
    as _i5;
import 'package:asl/b_application/tree_bloc/tree_actor/tree_actor_bloc.dart'
    as _i18;
import 'package:asl/b_application/tree_bloc/tree_form/tree_form_bloc.dart'
    as _i17;
import 'package:asl/b_application/tree_bloc/tree_watcher/tree_watcher_bloc.dart'
    as _i19;
import 'package:asl/b_application/user_bloc/user_form/user_form_bloc.dart'
    as _i25;
import 'package:asl/b_application/user_bloc/user_watcher_bloc.dart' as _i26;
import 'package:asl/c_domain/app_user/i_user_repo.dart' as _i15;
import 'package:asl/c_domain/auth/i_auth_facade.dart' as _i11;
import 'package:asl/c_domain/node/i_node_repository.dart' as _i13;
import 'package:asl/c_domain/tree/i_tree_repository.dart' as _i9;
import 'package:asl/d_infrastructure/auth/firebase_auth_facade.dart' as _i12;
import 'package:asl/d_infrastructure/core/firebase_injectable_module.dart'
    as _i27;
import 'package:asl/d_infrastructure/node/node_repository.dart' as _i14;
import 'package:asl/d_infrastructure/trees/tree_repository.dart' as _i10;
import 'package:asl/d_infrastructure/user/user_repository.dart' as _i16;
import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
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
    gh.factory<_i3.CurrentTreeBloc>(() => _i3.CurrentTreeBloc());
    gh.factory<_i4.ShareOptionBloc>(() => _i4.ShareOptionBloc());
    gh.factory<_i5.DrawTreeBloc>(() => _i5.DrawTreeBloc());
    gh.lazySingleton<_i6.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i7.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i8.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i9.ITreeRepository>(
        () => _i10.TreeRepository(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i11.IAuthFacade>(() => _i12.FirebaseAuthFacade(
          firebaseAuth: gh<_i7.FirebaseAuth>(),
          googleSignIn: gh<_i6.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i13.INodeRepository>(
        () => _i14.NodeRepository(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i15.IUserRepository>(
        () => _i16.UserRepository(gh<_i8.FirebaseFirestore>()));
    gh.factory<_i17.TreeFormBloc>(
        () => _i17.TreeFormBloc(gh<_i9.ITreeRepository>()));
    gh.factory<_i18.TreeActorBloc>(
        () => _i18.TreeActorBloc(gh<_i9.ITreeRepository>()));
    gh.factory<_i19.TreeWatcherBloc>(
        () => _i19.TreeWatcherBloc(gh<_i9.ITreeRepository>()));
    gh.factory<_i20.NodeActorBloc>(
        () => _i20.NodeActorBloc(gh<_i13.INodeRepository>()));
    gh.factory<_i21.NodeFormBloc>(
        () => _i21.NodeFormBloc(gh<_i13.INodeRepository>()));
    gh.factory<_i22.NodeWatcherBloc>(
        () => _i22.NodeWatcherBloc(gh<_i13.INodeRepository>()));
    gh.factory<_i23.AuthBloc>(() => _i23.AuthBloc(gh<_i11.IAuthFacade>()));
    gh.factory<_i24.SignInFormBloc>(
        () => _i24.SignInFormBloc(gh<_i11.IAuthFacade>()));
    gh.factory<_i25.UserFormBloc>(
        () => _i25.UserFormBloc(gh<_i15.IUserRepository>()));
    gh.factory<_i26.UserWatcherBloc>(
        () => _i26.UserWatcherBloc(gh<_i15.IUserRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i27.FirebaseInjectableModule {}
