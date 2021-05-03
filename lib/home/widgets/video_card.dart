import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hololive_app/generated/l10n.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';
import 'package:jiffy/jiffy.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({
    Key? key,
    required this.item,
    required this.isLive,
  }) : super(key: key);

  final StreamVideoItem item;
  final bool isLive;

  @override
  Widget build(BuildContext context) {
    Jiffy.locale(Intl.getCurrentLocale());
    return Card(
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
          await launch(url);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 1.78,
                  child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: CachedNetworkImageProvider(
                        "https://img.youtube.com/vi/${item.yt_video_key}/hqdefault.jpg"),
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
                      child: FadeInImage(
                        placeholder: MemoryImage(kTransparentImage),
                        image: CachedNetworkImageProvider(item.channel.photo),
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
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          item.channel.name,
                          style: Theme.of(context).textTheme.caption,
                        ),
                        if (isLive)
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
            )
          ],
        ),
      ),
    );
  }
}
