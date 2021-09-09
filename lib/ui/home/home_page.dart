import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hololive_app/bloc/cubit/app_settings_cubit.dart';
import 'package:hololive_app/bloc/home_page_bloc.dart';
import 'package:hololive_app/generated/l10n.dart';
import 'package:hololive_app/models/app_settings/app_settings.dart';
import 'package:hololive_app/ui/home/widgets/compact_item.dart';
import 'package:hololive_app/ui/home/widgets/pop_up_menu.dart';
import 'package:hololive_app/ui/home/widgets/video_card.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';
import 'package:lottie/lottie.dart';

part 'widgets/live_sliver_list.dart';
part 'widgets/upcoming_sliver_list.dart';
part 'widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Timer _refreshTimer;

  @override
  void initState() {
    _refreshTimer = Timer.periodic(const Duration(minutes: 1), (timer) {
      BlocProvider.of<HomePageBloc>(context).add(const RequestLiveList());
    });
    super.initState();
  }

  @override
  void dispose() {
    _refreshTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomePageBloc>(context).add(const RequestLiveList());
    return Scaffold(
      body: BlocBuilder<AppSettingsCubit, AppSettings>(
        builder: (context, appSettings) =>
            AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            systemNavigationBarColor: Theme.of(context).primaryColor,
            systemNavigationBarIconBrightness:
                appSettings.isDarkMode ? Brightness.light : Brightness.dark,
          ),
          child: BlocBuilder<HomePageBloc, HomePageState>(
            buildWhen: (_, state) => state is! HomePageLoading,
            builder: (context, state) {
              if (state is HomePageLoaded) {
                return CustomScrollView(
                  slivers: [
                    CustomAppBar(
                      appSettings: appSettings,
                    ),
                    ...?buildLiveSliverList(context, state, appSettings),
                    ...buildUpcomingSliverList(context, state, appSettings),
                  ],
                );
              } else if (state is HomePageInit) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                //assume state is HomePageError
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_rounded,
                        size: 48,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(S.of(context).networkError),
                      OutlinedButton(
                        onPressed: () =>
                            BlocProvider.of<HomePageBloc>(context).add(
                          const RequestLiveList(),
                        ),
                        child: Text(S.of(context).retry),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
