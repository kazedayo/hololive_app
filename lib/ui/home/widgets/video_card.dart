// Copyright (c) 2021 Kin Wa Lam
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hololive_app/bloc/cubit/video_card_cubit.dart';
import 'package:hololive_app/generated/l10n.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';
import 'package:hololive_app/util/custom_url_launch.dart';
import 'package:jiffy/jiffy.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:intl/intl.dart';

class VideoCard extends StatelessWidget {
  VideoCard({
    Key? key,
    required this.item,
    required this.isLive,
  }) : super(key: key);

  final StreamVideoItem item;
  final bool isLive;
  final Box<String> notiBox = Hive.box('notiBox');

  @override
  Widget build(BuildContext context) {
    Jiffy.locale(Intl.getCurrentLocale());
    return BlocProvider(
      create: (context) => VideoCardCubit(item, notiBox),
      child: BlocBuilder<VideoCardCubit, bool>(
        builder: (context, state) => Card(
          clipBehavior: Clip.antiAlias,
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          child: InkWell(
            onTap: () async {
              final String url = "https://youtu.be/${item.yt_video_key}";
              customUrlLaunch(url);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 1.78,
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image:
                            "https://img.youtube.com/vi/${item.yt_video_key}/hqdefault.jpg",
                        fit: BoxFit.cover,
                        fadeInDuration: const Duration(milliseconds: 200),
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: isLive ? Colors.redAccent : Colors.grey[800],
                        ),
                        child: Text(
                          isLive
                              ? item.live_start == null
                                  ? S.of(context).justStarted
                                  : S.of(context).liveTime(
                                        Jiffy(item.live_start).fromNow(),
                                      )
                              : item.live_schedule == null
                                  ? S.of(context).goingLive
                                  : S.of(context).liveIn(
                                        Jiffy(item.live_schedule).fromNow(),
                                      ),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: item.channel.photo,
                            fadeInDuration: const Duration(milliseconds: 200),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              item.channel.name,
                              style: Theme.of(context).textTheme.caption,
                            ),
                            if (isLive && item.live_viewers != null)
                              Text(
                                S.of(context).watching(
                                      NumberFormat.compact()
                                          .format(item.live_viewers),
                                    ),
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(color: Colors.redAccent),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (!isLive)
                  Padding(
                    padding: const EdgeInsets.only(right: 8, bottom: 4),
                    child: TextButton.icon(
                        icon: Icon(state
                            ? Icons.notifications
                            : Icons.notifications_outlined),
                        label: Text(state
                            ? S.of(context).notiOn
                            : S.of(context).getNotified),
                        onPressed: () {
                          BlocProvider.of<VideoCardCubit>(context)
                              .toggleNotification();
                        }),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
