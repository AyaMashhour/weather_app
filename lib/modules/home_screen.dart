import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conditional_builder/conditional_builder.dart';
import 'package:shop_app/shared/component.dart';
import 'package:shop_app/shared/remote/cubit.dart';
import 'package:shop_app/shared/remote/state.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => WeatherCubit()..getCurrentLocation(),
        child: BlocConsumer<WeatherCubit, WeatherState>(
            listener: (context, state) {


        }, builder: (context, state) {
          var list = WeatherCubit.get(context).data;
          WeatherCubit.get(context).getDataFromApi();

          return Scaffold(

            body: Stack(
              children: [
                Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      'assets/home.jpg',
                      fit: BoxFit.cover,
                    )),
                Positioned(
                  left: 130,
                  top: 60,
                  child: InkWell(
                    onTap: () {
                      WeatherCubit.get(context).getDataFromApi();
                    },
                    child: Text(
                      'today',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                          fontFamily: 'ayaah'),
                    ),
                  ),
                ),
                ConditionalBuilder(
                  condition: state is GetDataSuccessFromApi,
                  builder: (context) => Container(
                      height: double.infinity,
                      padding: EdgeInsets.only(top: 150),
                      child: ListView.separated(
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) =>
                              BuildItemBuilder(list[index], context),
                          separatorBuilder: (context, index) =>
                              BuildSeparatorBuilder(),
                          itemCount: list.length)),
                  fallback: (context) => Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              ],
            ),
          );
        }));
  }
}


