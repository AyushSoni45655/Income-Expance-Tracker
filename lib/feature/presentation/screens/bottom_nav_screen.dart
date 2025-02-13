import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:income_expance_tracker_app/core/constant/dimensionHelper.dart';
import 'package:income_expance_tracker_app/core/constant/fontsHelper.dart';
import 'package:income_expance_tracker_app/feature/presentation/screens/nav_screen/graph.dart';
import 'package:income_expance_tracker_app/feature/presentation/screens/nav_screen/home.dart';
import 'package:income_expance_tracker_app/feature/presentation/screens/nav_screen/profile.dart';
import 'package:income_expance_tracker_app/feature/presentation/screens/nav_screen/wallet.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

import '../blocs/nav/navigation_bloc.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<Widget>screens = [
    const HomeScreen(),
    const GrapHScreen(),
    const WalletScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: BlocBuilder<NavigationBloc,NavigationState>(builder: (context, state) {
  int count = 0;
  if(state is NavigationNavState){
    count = state.curruntIndex;
  }
  return screens[count];

},),
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(

        builder: (context, state) {
          int count = 0;
          if(state is NavigationNavState){
            count = state.curruntIndex;
          }
          return ResponsiveNavigationBar(
            padding: EdgeInsets.all(DimensionHelper.dimens_8),
            selectedIndex: count,
            textStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: FontHelper.font_40
            ),
            onTabChange: (value) {
              context.read<NavigationBloc>().add(NavigationNavEvent(index: value));
            },
            navigationBarButtons: [
              NavigationBarButton(
                text: 'Home',
                icon: Icons.home,
                backgroundGradient: LinearGradient(
                  colors: [Colors.yellow, Colors.green, Colors.blue],
                ),
              ),
              NavigationBarButton(
                text: 'Graph',
                icon: Icons.bar_chart_rounded,
                backgroundGradient: LinearGradient(
                  colors: [Colors.cyan, Colors.teal],
                ),
              ),
              NavigationBarButton(
                text: 'Wallet',
                icon: Icons.account_balance_wallet,
                backgroundGradient: LinearGradient(
                  colors: [Colors.green, Colors.yellow],
                ),
              ),
              NavigationBarButton(
                text: 'Person',
                icon: Icons.person,
                backgroundGradient: LinearGradient(
                  colors: [Colors.green, Colors.yellow],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
