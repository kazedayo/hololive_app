import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hololive_app/bloc/home_page_bloc.dart';
import 'package:hololive_app/home/widgets/video_card.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Timer _refreshTimer;

  @override
  void initState() {
    _refreshTimer = Timer.periodic(Duration(minutes: 1), (timer) {
      BlocProvider.of<HomePageBloc>(context).add(RequestLiveList());
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
    BlocProvider.of<HomePageBloc>(context).add(RequestLiveList());
    return Scaffold(
      body: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (context, state) {
          if (state is HomePageLoaded) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  actions: [
                    IconButton(
                      icon: Icon(
                        Icons.more_vert_rounded,
                      ),
                      onPressed: () {},
                    ),
                  ],
                  pinned: true,
                  stretch: true,
                  expandedHeight: 100,
                  elevation: 4,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    title: Text('Home'),
                    titlePadding: EdgeInsetsDirectional.only(
                      start: 16,
                      bottom: 16,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      bottom: 8,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Live Now',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Lottie.asset(
                          'assets/pulse.json',
                          width: 40,
                        )
                      ],
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      StreamVideoItem item = state.liveList[index];
                      return VideoCard(item: item);
                    },
                    childCount: state.liveList.length,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 16,
                      top: 48,
                      bottom: 16,
                    ),
                    child: Text(
                      'Upcoming Streams',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      StreamVideoItem item = state.upcomingList[index];
                      return VideoCard(item: item);
                    },
                    childCount: state.upcomingList.length,
                  ),
                ),
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
