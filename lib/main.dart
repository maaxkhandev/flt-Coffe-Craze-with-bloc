import 'package:coffe_craze/bloc/car_bloc/bloc/cart_bloc.dart';
import 'package:coffe_craze/bloc/home_bloc/bloc/home_bloc.dart';
import 'package:coffe_craze/config/routes.dart';
import 'package:coffe_craze/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/screens/introl_screen/intro_screen.dart';

// import 'screens/introl_screen/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>(
          create: (BuildContext context) => CartBloc(),
        ),
        BlocProvider<HomeBloc>(
          create: (BuildContext context) => HomeBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Coffe Craze',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.dark,
        darkTheme: AppTheme.darkTheme,
        routes: getRoutes(context),
        home: const IntroScreen(),
      ),
    );
  }
}
