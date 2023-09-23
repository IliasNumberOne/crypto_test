
import 'package:crypto_test/screens/game_screen/game_model.dart';
import 'package:crypto_test/screens/game_screen/game_view.dart';
import 'package:crypto_test/screens/profile_screen/profile_model.dart';
import 'package:crypto_test/screens/profile_screen/profile_view.dart';
import 'package:crypto_test/screens/quiz_screen/quiz_model.dart';
import 'package:crypto_test/screens/quiz_screen/quiz_view.dart';
import 'package:crypto_test/screens/result_screen/result_view.dart';
import 'package:crypto_test/screens/settings_screen/Settings_view.dart';
import 'package:crypto_test/screens/store_screen/store_model.dart';
import 'package:crypto_test/screens/store_screen/store_view.dart';
import 'package:crypto_test/services/preference_service.dart';
import 'package:crypto_test/widgets/CustomBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preference = await SharedPreferences.getInstance();
  runApp(ScreenUtilInit(
    designSize: const Size(390, 844),
    builder: (context, child) {
      return CryptoTest(
        preferences: preference,
      );
    },
  ));
}

CustomTransitionPage buildPageWithDefaultTransition({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  bool opaque = true,
}) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionDuration: Duration.zero,
    opaque: opaque,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}

class CryptoTest extends StatefulWidget {
  final SharedPreferences preferences;

  const CryptoTest({
    Key? key,
    required this.preferences,
  }) : super(key: key);

  @override
  State<CryptoTest> createState() => _CryptoTestState();
}

class _CryptoTestState extends State<CryptoTest> {
  late GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = GoRouter(
      initialLocation: '/',
      routes: [
        ShellRoute(
          pageBuilder: (context, state, child) {
            final hasBottomBar =
                (_router.routerDelegate.currentConfiguration.uri.toString() !=
                    '/game_screen');
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: CustomBottomNavigationBar(
                hasBottomBar: hasBottomBar,
                child: child,
              ),
            );
          },
          routes: [
            GoRoute(
              path: '/',
              pageBuilder: (context, state) {
                return buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: const QuizScreen(),
                );
              },
              routes: [
                GoRoute(
                  path: 'store_screen',
                  pageBuilder: (context, state) {
                    return buildPageWithDefaultTransition(
                      context: context,
                      state: state,
                      child: StoreScreen(),
                    );
                  },
                ),
              ],
            ),
            GoRoute(
              path: '/profile_screen',
              pageBuilder: (context, state) {
                return buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: ProfileScreen(),
                );
              },
            ),
            GoRoute(
              path: '/settings_screen',
              pageBuilder: (context, state) {
                return buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: SettingsScreen(),
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: '/game_screen',
          pageBuilder: (context, state) {
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: GameScreen(),
            );
          },
        ),
        GoRoute(
          path: '/result_screen',
          pageBuilder: (context, state) {
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: ResultScreen(),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (BuildContext context) =>
              PreferenceService(widget.preferences),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              StoreModel(preferenceService: context.read<PreferenceService>())
                ..resumeApp(),
        ),
        ChangeNotifierProvider(
          create: (context) => GameModel(
            preferenceService: context.read<PreferenceService>(),
            storeModel: context.read<StoreModel>(),
          )..resumeApp(),
        ),
        ChangeNotifierProvider(
          create: (context) => QuizModel(
            preferenceService: context.read<PreferenceService>(),
          ),
        ),
        ChangeNotifierProvider(create: (context) => ProfileModel()),
      ],
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          theme: ThemeData(fontFamily: 'OpenSans'),
          routerConfig: _router,
        );
      },
    );
  }
}
