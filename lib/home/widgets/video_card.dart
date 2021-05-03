import 'package:date_time_format/date_time_format.dart';
import 'package:flutter/material.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

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
                          ? "Started ${item.live_start!.relative(
                              to: DateTime.now(),
                              abbr: true,
                              appendIfAfter: "ago",
                            )}"
                          : item.live_schedule!.relative(
                              to: DateTime.now(),
                              abbr: true,
                              prependIfBefore: "Live in",
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
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          item.channel.name,
                          style: Theme.of(context).textTheme.caption,
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
