import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/layout/start_screen.dart';
import 'package:shop_app/shared/network/dio_helper.dart';
import 'package:shop_app/shared/remote/cubit.dart';
import 'package:shop_app/shared/remote/state.dart';
import 'package:shop_app/shared/theme_data/dark_theme.dart';

import 'modules/home_screen.dart';


void main() {
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit()..getCurrentLocation(),
      child: BlocConsumer<WeatherCubit, WeatherState>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomeScreen(),
              theme: darkTheme,
            );
          }),
    );
  }
}
