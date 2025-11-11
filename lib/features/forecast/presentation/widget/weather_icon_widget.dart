import 'package:awesome_weather/features/forecast/data/model/network/enum/weather_code.dart';
import 'package:awesome_weather/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherIconWidget extends StatelessWidget {
  final Map<WeatherCode,String> _imageMap ={
    WeatherCode.clearSky: Assets.images.weatherClear,
    WeatherCode.mainlyClear: Assets.images.weatherMostlyClear,
    WeatherCode.partlyCloudy: Assets.images.weatherMostlyCloud,
    WeatherCode.overcast: Assets.images.weatherCloudy,

    WeatherCode.fog: Assets.images.weatherMisty,
    WeatherCode.depositingRimeFog: Assets.images.weatherMisty,

    WeatherCode.drizzleLight: Assets.images.weatherRain,
    WeatherCode.drizzleModerate: Assets.images.weatherRain,
    WeatherCode.drizzleDense: Assets.images.weatherRain,

    WeatherCode.freezingDrizzleLight: Assets.images.weatherRain,
    WeatherCode.freezingDrizzleDense: Assets.images.weatherRain,

    WeatherCode.rainSlight: Assets.images.weatherRain,
    WeatherCode.rainModerate: Assets.images.weatherRain,
    WeatherCode.rainHeavy: Assets.images.weatherRain,

    WeatherCode.freezingRainLight: Assets.images.weatherRain,
    WeatherCode.freezingRainHeavy: Assets.images.weatherRain,

    WeatherCode.snowFallSlight: Assets.images.weatherCloudy,
    WeatherCode.snowFallModerate: Assets.images.weatherCloudy,
    WeatherCode.snowFallHeavy: Assets.images.weatherCloudy,

    WeatherCode.snowGrains: Assets.images.weatherCloudy,

    WeatherCode.rainShowersSlight: Assets.images.weatherRain,
    WeatherCode.rainShowersModerate: Assets.images.weatherRain,
    WeatherCode.rainShowersViolent: Assets.images.weatherRain,

    WeatherCode.snowShowersSlight: Assets.images.weatherCloudy,
    WeatherCode.snowShowersHeavy: Assets.images.weatherCloudy,

    WeatherCode.thunderstormSlightOrModerate: Assets.images.weatherThunder,
    WeatherCode.thunderstormWithSlightHail: Assets.images.weatherThunder,
    WeatherCode.thunderstormWithHeavyHail: Assets.images.weatherThunder,
  };

  final double size;
  final WeatherCode weatherCode;
  WeatherIconWidget({super.key,required this.weatherCode, required this.size});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      _imageMap[weatherCode]!,
      fit: BoxFit.scaleDown,
      width: size,
      height: size,
    );
  }
}
