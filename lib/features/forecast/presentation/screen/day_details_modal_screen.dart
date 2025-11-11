import 'package:awesome_weather/features/forecast/domain/entity/location_entity.dart';
import 'package:awesome_weather/features/forecast/presentation/bloc/day_detail/day_detail_bloc.dart';
import 'package:awesome_weather/features/forecast/presentation/bloc/day_detail/day_detail_event.dart';
import 'package:awesome_weather/features/forecast/presentation/bloc/day_detail/day_detail_state.dart';
import 'package:awesome_weather/features/forecast/presentation/widget/day_details_hourly_list_item.dart';
import 'package:awesome_weather/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

class DayDetailsModalScreen extends StatelessWidget {
  const DayDetailsModalScreen({super.key});

  static show({required BuildContext context,required LocationEntity location, required DateTime date}){
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      clipBehavior: Clip.antiAlias,
      builder: (context) => BlocProvider(
        create: (context) => GetIt.I<DayDetailBloc>(param1: location, param2: date)..add(GetDayDetailEvent()),
        child: DayDetailsModalScreen()
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    DayDetailBloc bloc = context.read<DayDetailBloc>();

    Widget dragIndicator = Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: 40,
        height: 4,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.outline,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );

    Widget header = Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          Text(
            DateFormat.EEEE().format(bloc.date),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              DateFormat.yMd().format(bloc.date),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0,bottom: 16),
            child: Text(
              AppLocalizations.of(context)!.location(bloc.location.latitude,bloc.location.longitude)
            ),
          )
        ],
      ),
    );

    Widget hourList = BlocBuilder<DayDetailBloc,DayDetailState>(
      builder: (context, state) {
        switch(state){
          case DayDetailStateInitial():
            return Container();

          case DayDetailStateLoading():
            return Center(
              child: CircularProgressIndicator(),
            );

          case DayDetailStateError():
            return Center(
              child: Icon(
                Icons.error,
                size: 150,
                color: Theme.of(context).colorScheme.error,
              )
            );

          case DayDetailStateLoaded():
            return ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(bottom: MediaQuery.viewPaddingOf(context).bottom),
              shrinkWrap: true,
              itemCount: state.dayDetail.hourly.length,
              itemBuilder: (context, index) => DayDetailsHourlyListItem(
                listData: state.dayDetail.hourly[index],
              ),
            );
        }
      }
    );

    return DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                dragIndicator,
                header,
                hourList
              ],
            ),
          ),
        );
      },
    );
  }
}
