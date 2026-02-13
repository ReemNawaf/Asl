// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:asl/b_application/auth_bloc/auth_bloc.dart' as _i24;
import 'package:asl/b_application/auth_bloc/sign_in_form/sign_in_form_bloc.dart'
    as _i25;
import 'package:asl/b_application/local_tree_bloc/local_tree_bloc.dart' as _i26;
import 'package:asl/b_application/node_bloc/node_actor/node_actor_bloc.dart'
    as _i23;
import 'package:asl/b_application/node_bloc/node_form/node_form_bloc.dart'
    as _i7;
import 'package:asl/b_application/relation_bloc/child_form/child_form_bloc.dart'
    as _i3;
import 'package:asl/b_application/relation_bloc/partner_form/partner_form_bloc.dart'
    as _i4;
import 'package:asl/b_application/tree_bloc/draw_tree/draw_tree_bloc.dart'
    as _i6;
import 'package:asl/b_application/tree_bloc/tree_form/tree_form_bloc.dart'
    as _i5;
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart'
    as _i22;
import 'package:asl/b_application/tree_bloc/tree_settings/zoom_bloc/tree_zoom_bloc.dart'
    as _i8;
import 'package:asl/b_application/user_form/user_form_bloc.dart' as _i27;
import 'package:asl/c_domain/app_user/i_user_repo.dart' as _i20;
import 'package:asl/c_domain/auth/i_auth_facade.dart' as _i14;
import 'package:asl/c_domain/node/i_node_repository.dart' as _i16;
import 'package:asl/c_domain/relation/i_relation_repository.dart' as _i18;
import 'package:asl/c_domain/tree/i_tree_repository.dart' as _i12;
import 'package:asl/d_infrastructure/auth/firebase_auth_facade.dart' as _i15;
import 'package:asl/d_infrastructure/core/firebase_injectable_module.dart'
    as _i28;
import 'package:asl/d_infrastructure/node/node_repository.dart' as _i17;
import 'package:asl/d_infrastructure/relation/relation_repository.dart' as _i19;
import 'package:asl/d_infrastructure/trees/tree_repository.dart' as _i13;
import 'package:asl/d_infrastructure/user/user_repository.dart' as _i21;
import 'package:cloud_firestore/cloud_firestore.dart' as _i11;
import 'package:firebase_auth/firebase_auth.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
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
    gh.factory<_i3.ChildFormBloc>(() => _i3.ChildFormBloc());
    gh.factory<_i4.PartnerFormBloc>(() => _i4.PartnerFormBloc());
    gh.factory<_i5.TreeFormBloc>(() => _i5.TreeFormBloc());
    gh.factory<_i6.DrawTreeBloc>(() => _i6.DrawTreeBloc());
    gh.factory<_i7.NodeFormBloc>(() => _i7.NodeFormBloc());
    gh.factory<_i8.TreeZoomBloc>(() => _i8.TreeZoomBloc());
    gh.lazySingleton<_i9.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i10.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i11.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i12.ITreeRepository>(
        () => _i13.TreeRepository(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i14.IAuthFacade>(() => _i15.FirebaseAuthFacade(
          firebaseAuth: gh<_i10.FirebaseAuth>(),
          googleSignIn: gh<_i9.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i16.INodeRepository>(
        () => _i17.NodeRepository(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i18.IRelationRepository>(
        () => _i19.RelationRepository(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i20.IUserRepository>(
        () => _i21.UserRepository(gh<_i11.FirebaseFirestore>()));
    gh.factory<_i22.TreeSettingsBloc>(
        () => _i22.TreeSettingsBloc(gh<_i12.ITreeRepository>()));
    gh.factory<_i23.NodeActorBloc>(
        () => _i23.NodeActorBloc(gh<_i16.INodeRepository>()));
    gh.factory<_i24.AuthBloc>(() => _i24.AuthBloc(gh<_i14.IAuthFacade>()));
    gh.factory<_i25.SignInFormBloc>(
        () => _i25.SignInFormBloc(gh<_i14.IAuthFacade>()));
    gh.factory<_i26.LocalTreeBloc>(() => _i26.LocalTreeBloc(
          gh<_i12.ITreeRepository>(),
          gh<_i16.INodeRepository>(),
          gh<_i18.IRelationRepository>(),
        ));
    gh.factory<_i27.UserFormBloc>(
        () => _i27.UserFormBloc(gh<_i20.IUserRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i28.FirebaseInjectableModule {}
