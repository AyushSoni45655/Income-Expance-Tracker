
 import 'package:go_router/go_router.dart';
import 'package:income_expance_tracker_app/feature/presentation/screens/add_expance_screen.dart';
import 'package:income_expance_tracker_app/feature/presentation/screens/bill_payment_screen.dart';
import 'package:income_expance_tracker_app/feature/presentation/screens/bottom_nav_screen.dart';
import 'package:income_expance_tracker_app/feature/presentation/screens/connect_wallet_screen.dart';
import 'package:income_expance_tracker_app/feature/presentation/screens/home_onboarding.dart';
import 'package:income_expance_tracker_app/feature/presentation/screens/nav_screen/graph.dart';

import '../../feature/presentation/screens/auth_screen/forgot_password_screen.dart';
import '../../feature/presentation/screens/auth_screen/login.dart';
import '../../feature/presentation/screens/auth_screen/sign_in.dart';
import '../../feature/presentation/screens/auth_screen/splash.dart';

final GoRouter appRoutes = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: 'splash',
    builder: (context, state) => SplashScreen(),
  ),
//   GoRoute(
//     path: '/bottom',
//     name: 'bottomNav',
//     builder: (context, state) => BottomNavigationScreen(),
//   ),
//   GoRoute(
//     path: "/details",
//     name: "detailsPage",
//     builder:
//         (context, state) {
//       final product = state.extra as  ProductEntity;
//       return DetailsScreen(productEntity: product,);},
//   ),
  GoRoute(
    path: "/login",
    name: "login",
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: "/fPassword",
    name: "fPassword",
    builder: (context, state) => ForgotPasswordScreen(),
  ),
  GoRoute(
    path: "/signin",
    name: "signin",
  builder: (context, state) => SignInScreen(),
  ),
  GoRoute(
    path: "/bottom",
    name: "bottom",
    builder: (context, state) => BottomNavScreen(),
  ),
  GoRoute(
    path: "/onboard",
    name: "HomeOnBoarding",
    builder: (context, state) => HomeOnboarding(),
  ),
  GoRoute(
    path: "/aExpance",
    name: "addExpanceScreen",
    builder: (context, state) => AddExpanceScreen(),
  ),
  GoRoute(
    path: "/graph",
    name: "graphScreen",
    builder: (context, state) => GrapHScreen(),
  ),
  GoRoute(
    path: "/cWallet",
    name: "connectWallet",
    builder: (context, state) => ConnectWalletScreen(),
  ),
  GoRoute(
    path: "/bPayment",
    name: "billPayment",
    builder: (context, state) => BillPaymentScreen(),
  )
 ]);
