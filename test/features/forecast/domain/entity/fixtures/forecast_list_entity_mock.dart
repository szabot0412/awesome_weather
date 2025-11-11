import 'package:awesome_weather/features/forecast/domain/entity/forecast_list_entity.dart';

import '../../../data/model/network/fixtures/current_values_mock.dart';
import 'forecast_list_values_entity_mock.dart';

final ForecastListEntity mockForecastListEntity = ForecastListEntity(
    latitude: 47.4984,
    longitude: 19.0404,
    current: mockCurrentValues,
    daily: [mockForecastListValuesEntity1, mockForecastListValuesEntity2, mockForecastListValuesEntity3]
);