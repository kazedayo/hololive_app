import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hololive_app/bloc/cubit/video_card_cubit.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';
import 'package:hololive_app/util/custom_url_launch.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CompactItem extends StatelessWidget {
  CompactItem({
    Key? key,
    required this.item,
    required this.isLive,
  }) : super(key: key);

  final StreamVideoItem item;
  final bool isLive;
  final Box<String> notiBox = Hive.box('notiBox');

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => VideoCardCubit(item, notiBox),
        child: BlocBuilder<VideoCardCubit, bool>(
          builder: (context, state) => Card(
            elevation: 3,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: ListTile(
              onTap: () async {
                final String url = "https://youtu.be/${item.yt_video_key}";
                customUrlLaunch(url);
              },
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(999),
                child: CachedNetworkImage(
                  imageUrl: item.channel.photo,
                  fadeInDuration: const Duration(milliseconds: 200),
                ),
              ),
              title: Text(
                item.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                item.channel.name,
                style: Theme.of(context).textTheme.caption,
              ),
              trailing: isLive
                  ? null
                  : IconButton(
                      icon: Icon(state
                          ? Icons.notifications
                          : Icons.notifications_outlined),
                      onPressed: () {
                        BlocProvider.of<VideoCardCubit>(context)
                            .toggleNotification();
                      },
                    ),
            ),
          ),
        ),
      );
}
