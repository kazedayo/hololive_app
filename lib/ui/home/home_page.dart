import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hololive_app/bloc/cubit/app_theme_cubit.dart';
import 'package:hololive_app/bloc/home_page_bloc.dart';
import 'package:hololive_app/generated/l10n.dart';
import 'package:hololive_app/ui/home/widgets/video_card.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

part 'widgets/live_sliver_list.dart';
part 'widgets/upcoming_sliver_list.dart';

class HomePage extends StatefulWidget {
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
      body: BlocBuilder<AppThemeCubit, bool>(
        builder: (context, isDarkMode) => AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            systemNavigationBarColor: Theme.of(context).primaryColor,
            systemNavigationBarIconBrightness:
                isDarkMode ? Brightness.light : Brightness.dark,
          ),
          child: BlocBuilder<HomePageBloc, HomePageState>(
            buildWhen: (_, state) => state is! HomePageLoading,
            builder: (context, state) {
              if (state is HomePageLoaded) {
                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      backwardsCompatibility: false,
                      systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor: Theme.of(context).primaryColor,
                        statusBarBrightness:
                            isDarkMode ? Brightness.dark : Brightness.light,
                        statusBarIconBrightness:
                            isDarkMode ? Brightness.light : Brightness.dark,
                      ),
                      actions: [
                        PopupMenuButton(
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 0,
                              child: ListTile(
                                leading: const Icon(Icons.copyright),
                                title: Text(S.of(context).copyright),
                              ),
                            ),
                            PopupMenuItem(
                              value: 1,
                              child: ListTile(
                                leading: const Icon(Icons.code_rounded),
                                title: Text(S.of(context).source),
                              ),
                            ),
                          ],
                          onSelected: (value) {
                            if (value == 0) {
                              showLicensePage(
                                applicationName: "HoloSchedule",
                                context: context,
                              );
                            } else if (value == 1) {
                              launch(
                                'https://github.com/kazedayo/hololive_app',
                              );
                            }
                          },
                          icon: const Icon(Icons.more_vert_rounded),
                        ),
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
                    ),
                    ...?buildLiveSliverList(context, state),
                    ...buildUpcomingSliverList(context, state),
                  ],
                );
              } else if (state is HomePageInit) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
