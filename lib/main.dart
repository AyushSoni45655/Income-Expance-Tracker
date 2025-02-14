import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:income_expance_tracker_app/core/constant/error/firebase_optionss.dart';
import 'package:income_expance_tracker_app/feature/presentation/blocs/nav/navigation_bloc.dart';
import 'package:income_expance_tracker_app/feature/presentation/blocs/password/toggle_bloc.dart';
import 'package:income_expance_tracker_app/getit_dependency.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'core/constant/routes.dart';
import 'core/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: option,
  );
  setUpLocator();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => GetIt.I<ToggleBloc>(),),
    BlocProvider(create: (context) => GetIt.I<NavigationBloc>(),)
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          builder: (context, child) => ResponsiveWrapper.builder(
            child,
            maxWidth: 1280,
            minWidth: 640,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(640, name: 'SM'),
              ResponsiveBreakpoint.autoScale(768, name: 'MD'),
              ResponsiveBreakpoint.autoScale(1024, name: 'LG'),
              ResponsiveBreakpoint.autoScale(1280, name: 'XL'),
            ],
          ),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          darkTheme: AAppTheme.darkTheme,
          theme: AAppTheme.lightTheme,
          themeMode: ThemeMode.system,
          routerConfig: appRoutes,
        );
      },
    );
  }
}
