import 'package:flutter/material.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';
import 'package:transparent_image/transparent_image.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  final StreamVideoItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
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
                  fadeInDuration: Duration(milliseconds: 200),
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
                      fadeInDuration: Duration(milliseconds: 200),
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: TextStyle(fontWeight: FontWeight.w600),
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
    );
  }
}
