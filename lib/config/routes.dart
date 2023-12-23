import 'package:flutter/material.dart';

import '../ui/screens/landing_screen/landing_screen.dart';
import '../ui/screens/tea_detail_screen/tea_detail_screen.dart';

Map<String, Widget Function(BuildContext)> getRoutes(BuildContext ctx) {
  return {
    LandingScreen.routeName: (ctx) => const LandingScreen(),
    TeaDetailScreen.routeName: (ctx) => const TeaDetailScreen(),
  };
}
