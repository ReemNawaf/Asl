import 'package:asl/a_presentation/a_shared/constants.dart';
import 'package:asl/a_presentation/home/home_page_center.dart';
import 'package:asl/a_presentation/home/tree_search_bar.dart';
import 'package:asl/a_presentation/home/widgets/side_bar.dart';
import 'package:asl/a_presentation/routes/app_router.dart';
import 'package:asl/a_presentation/splash/small_screen_page.dart';
import 'package:asl/b_application/auth_bloc/auth_bloc.dart';
import 'package:asl/b_application/tree_bloc/tree_settings/tree_settings_bloc.dart';
import 'package:asl/localization/localization_constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = 'HomePage';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final local = Localizations.localeOf(context);
    if (size.height < MIM_HEIGHT || size.width < MIM_WIDTH) {
      return const SmallScreenPage();
    }
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: Row(
              children: [
                SideBar(size: size),
                BlocBuilder<TreeSettingsBloc, TreeSettingsState>(
                  builder: (context, state) {
                    return SizedBox(
                      child: Stack(
                        children: [
                          HomePageCenter(size: size, state: state),
                          const TreeSearchBar(),
                          Container(
                            alignment: local.languageCode == arabic
                                ? Alignment.bottomLeft
                                : Alignment.bottomRight,
                            padding:
                                const EdgeInsets.only(left: 20, bottom: 18),
                            child: IconButton(
                              icon: const Icon(Icons.logout_outlined),
                              onPressed: () {
                                context
                                    .read<AuthBloc>()
                                    .add(const AuthEvent.singedOut());
                                context.router.push(const AuthRoute());
                              },
                            ),
                          ),
                          Container(
                            width: 150,
                            padding: EdgeInsets.only(
                                right: 20, top: size.height - 85),
                            child: BlocBuilder<TreeSettingsBloc,
                                TreeSettingsState>(
                              builder: (context, state) {
                                return Slider(
                                  min: MIN_ZOOM,
                                  max: MAX_ZOOM,
                                  value: state.zoomScale,
                                  label:
                                      "${state.zoomScale.toStringAsFixed(2)}x",
                                  onChanged: (newScale) {
                                    context.read<TreeSettingsBloc>().add(
                                        TreeSettingsEvent.zoomChanged(
                                            newScale));
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
