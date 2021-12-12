// Copyright (c) 2021 Kin Wa Lam
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

part of '../home_page.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.appSettings}) : super(key: key);

  final AppSettings appSettings;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColor,
        statusBarBrightness:
            appSettings.isDarkMode ? Brightness.dark : Brightness.light,
        statusBarIconBrightness:
            appSettings.isDarkMode ? Brightness.light : Brightness.dark,
      ),
      actions: [
        IconButton(
          icon: () {
            switch (appSettings.listDisplayMode) {
              case ListDisplayMode.card:
                return const Icon(Icons.view_list_rounded);
              case ListDisplayMode.compact:
                return const Icon(Icons.view_agenda_rounded);
            }
          }(),
          onPressed: () =>
              BlocProvider.of<AppSettingsCubit>(context).changeListMode(
            mode: () {
              switch (appSettings.listDisplayMode) {
                case ListDisplayMode.card:
                  return ListDisplayMode.compact;
                case ListDisplayMode.compact:
                  return ListDisplayMode.card;
              }
            }(),
          ),
        ),
        const PopupMenu(),
      ],
      pinned: true,
      stretch: true,
      expandedHeight: 100,
      elevation: 4,
      flexibleSpace: const FlexibleSpaceBar(
        centerTitle: false,
        title: Text('HoloSchedule'),
        titlePadding: EdgeInsetsDirectional.only(
          start: 16,
          bottom: 16,
        ),
      ),
    );
  }
}
