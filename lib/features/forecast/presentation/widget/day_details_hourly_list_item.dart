import 'package:awesome_weather/core/util/unit_extension.dart';
import 'package:awesome_weather/features/forecast/domain/entity/day_detail_values_entity.dart';
import 'package:awesome_weather/features/forecast/presentation/widget/weather_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DayDetailsHourlyListItem extends StatelessWidget {
  final DayDetailValuesEntity listData;
  const DayDetailsHourlyListItem({super.key, required this.listData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              DateFormat(DateFormat.HOUR_MINUTE).format(listData.time),
              style: Theme.of(context).textTheme.titleMedium,
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: WeatherIconWidget(
              weatherCode: listData.weatherCode,
              size: 32
            ),
          ),
          SizedBox(
            width: 44,
            child: Text(
              listData.temperature.round().asCelsius(),
              textAlign: TextAlign.end,
            )
          ),
          Icon(Icons.thermostat),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 1),
            child: SizedBox(
              width: 65,
              child: Text(
                listData.rain.round().asMM(),
                textAlign: TextAlign.end
              )
            ),
          ),
          Icon(Icons.water_drop),
        ],
      ),
    );
  }
}
