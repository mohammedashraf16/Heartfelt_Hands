import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:heartfelt_hands/core/databases/cache/cache_helper.dart';
import 'package:heartfelt_hands/core/functions/check_state_changes.dart';
import 'package:heartfelt_hands/core/services/service_locator.dart';
import 'package:heartfelt_hands/features/onboarding/presentation/views/onboarding_screen.dart';
import 'package:heartfelt_hands/firebase_options.dart';
import 'package:heartfelt_hands/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServiceLocator();
  checkStateChanges();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale("ar"),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        backgroundColor: AppColors.kBackgroundColor,
        animationDuration: const Duration(seconds: 1),
        splashTransition: SplashTransition.scaleTransition,
        curve: Curves.easeInOutCirc,
        splashIconSize: 600,
        splash: SizedBox(
          height: 600,
          width: 600,
          child: Center(
            child: Image.asset(
              "assets/images/LOGO.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        nextScreen: const HomePage(),
      ),
    );
  }
}

