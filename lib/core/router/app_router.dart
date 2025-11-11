import 'package:awesome_weather/features/forecast/presentation/bloc/forecast_list/forecast_list_bloc.dart';
import 'package:awesome_weather/features/forecast/presentation/bloc/forecast_list/forecast_list_event.dart';
import 'package:awesome_weather/features/forecast/presentation/screen/forecast_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  forecastList,
}

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.forecastList.name,
      builder: (context, state) => BlocProvider(
        create: (BuildContext context) => GetIt.I<ForecastListBloc>()..add(GetForecastListEvent()),
        child: const ForecastListScreen()
      ),
    ),
  ],
);