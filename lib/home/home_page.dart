import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hololive_app/bloc/home_page_bloc.dart';
import 'package:hololive_app/home/widgets/video_card.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomePageBloc>(context).add(RequestLiveList());
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (context, state) {
          if (state is HomePageLoaded) {
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Text(
                      'Live Now',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      StreamVideoItem item = state.apiResponse.live![index];
                      return VideoCard(item: item);
                    },
                    childCount: state.apiResponse.live!.length,
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
