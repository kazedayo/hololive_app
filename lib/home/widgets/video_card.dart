import 'package:flutter/material.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';

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
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 1.78,
            child: Image.network(
              "https://img.youtube.com/vi/${item.yt_video_key}/hqdefault.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(item.title),
          )
        ],
      ),
    );
  }
}
