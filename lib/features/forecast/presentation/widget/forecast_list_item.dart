import 'package:awesome_weather/core/util/unit_extension.dart';
import 'package:awesome_weather/features/forecast/domain/entity/forecast_list_values_entity.dart';
import 'package:awesome_weather/features/forecast/presentation/widget/weather_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ForecastListItem extends StatelessWidget {
  final VoidCallback? onTap;
  final ForecastListValuesEntity listItem;

  const ForecastListItem({super.key, this.onTap, required this.listItem});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.surfaceContainer,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  DateFormat.EEEE().format(listItem.time),
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: WeatherIconWidget(
                  weatherCode: listItem.weatherCode,
                  size: 32
                ),
              ),
              SizedBox(
                width: 40,
                child: Text(
                  listItem.temperatureMax.round().asCelsius(),
                  textAlign: TextAlign.end
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("/"),
              ),
              SizedBox(
                width: 40,
                child: Text(listItem.temperatureMin.round().asCelsius())
              ),
            ],
          ),
        ),
      ),
    );
  }
}
