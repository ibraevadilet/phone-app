import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:phone_app/core/blocs/bottom_navigator_cubit/bottom_navigator_cubit.dart';
import 'package:phone_app/features/splash/splash_cubit/splash_cubit.dart';
import 'package:phone_app/firebase_options.dart';
import 'package:phone_app/routes/mobile_app_router.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

// ignore: long-method
Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  /// Other Services
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  sl.registerSingleton<MobileAppRouter>(MobileAppRouter());

  //Blocs
  sl.registerFactory<SplashCubit>(() => SplashCubit(prefs: sl()));
  sl.registerFactory<BottomNavigatorCubit>(() => BottomNavigatorCubit());
}
