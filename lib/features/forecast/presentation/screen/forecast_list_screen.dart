import 'package:awesome_weather/core/util/unit_extension.dart';
import 'package:awesome_weather/features/forecast/presentation/bloc/forecast_list/forecast_list_bloc.dart';
import 'package:awesome_weather/features/forecast/presentation/bloc/forecast_list/forecast_list_event.dart';
import 'package:awesome_weather/features/forecast/presentation/bloc/forecast_list/forecast_list_state.dart';
import 'package:awesome_weather/features/forecast/presentation/screen/day_details_modal_screen.dart';
import 'package:awesome_weather/features/forecast/presentation/widget/forecast_list_item.dart';
import 'package:awesome_weather/features/forecast/presentation/widget/weather_icon_widget.dart';
import 'package:awesome_weather/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForecastListScreen extends StatelessWidget {
  const ForecastListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: RefreshIndicator(
          edgeOffset: MediaQuery.of(context).padding.top,
          onRefresh: () async => context.read<ForecastListBloc>().add(GetForecastListEvent()),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: BlocBuilder<ForecastListBloc, ForecastListState>(
              builder: (context, state) {
                Widget currentDayStat = Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: _StatItem(
                            value: state is ForecastListLoaded ? state.forecastList.current.cloudCover.asPercent() : "-",
                            title: AppLocalizations.of(context)!.cloud_cover,
                            icon: Icons.cloud
                          )
                        ),
                        Expanded(
                          child: _StatItem(
                            value: state is ForecastListLoaded ? state.forecastList.current.rain.asMM() : "-",
                            title: AppLocalizations.of(context)!.rain,
                            icon: Icons.water_drop
                          )
                        ),
                        Expanded(
                          child: _StatItem(
                            value: state is ForecastListLoaded ? state.forecastList.current.windSpeed10m.asKmH() : "-",
                            title: AppLocalizations.of(context)!.wind,
                            icon: Icons.wind_power
                          )
                        )
                      ],
                    ),
                  ),
                );
          
                Widget list = Center(
                  child: Text(AppLocalizations.of(context)!.no_data),
                );
          
                Widget weatherIcon;

                switch(state){
                  case ForecastListInitial():
                    weatherIcon = Container();

                  case ForecastListLoading():
                    weatherIcon = Center(
                      child: CircularProgressIndicator(),
                    );
                    list = Center(
                      child: CircularProgressIndicator(),
                    );

                  case ForecastListError():
                    weatherIcon = Center(
                      child: Icon(
                        Icons.error,
                        size: 150,
                        color: Theme.of(context).colorScheme.error,
                      ),
                    );

                  case ForecastListLoaded():
                    weatherIcon = WeatherIconWidget(
                      weatherCode: state.forecastList.current.weatherCode,
                      size: 200
                    );
                    list = ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.forecastList.daily.length,
                      itemBuilder: (context, index) => ForecastListItem(
                        listItem: state.forecastList.daily[index],
                        onTap: () => DayDetailsModalScreen.show(
                            context: context,
                            location: state.forecastList.location,
                            date: state.forecastList.daily[index].time)
                      ),
                      separatorBuilder: (BuildContext context, int index) => Divider(),
                    );
                }
          
                return Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 600),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 16.0,
                          right: 16,
                          top: MediaQuery.of(context).padding.top + 16,
                          bottom: MediaQuery.of(context).padding.bottom + 16),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                            child: Text(
                              AppLocalizations.of(context)!.app_name,
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: SizedBox(
                              height: 200,
                              child: weatherIcon
                            ),
                          ),
                          Text(
                            state is ForecastListLoaded ? state.forecastList.current.temperature2m.asCelsius() : "-",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: currentDayStat,
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(minHeight: 250),
                              child: SizedBox(
                                width: double.infinity,
                                child: list
                              ),
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String title;
  final IconData icon;
  const _StatItem({super.key, required this.value, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            value,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}

