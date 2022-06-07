import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../data.dart';
class SearchResult extends StatelessWidget {
   final Video video;
   final bool hasPadding;
  
  const SearchResult({ Key? key, required this.video, required this.hasPadding }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(title: Text(video.title)),
      body: GestureDetector(
        onTap: () async{
         await launch(video.url);
         
          
        },
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: hasPadding ? 12.0 : 0,
                  ),
                  child: Image.network(
                    video.thumbnailUrl,
                    height: 220.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 8.0,
                  right: hasPadding ? 20.0 : 8.0,
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    color: Colors.black,
                    child: Text(
                      video.duration,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => print('Navigate to profile'),
                    child: CircleAvatar(
                      foregroundImage: NetworkImage(video.author.profileImageUrl),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            video.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: 15.0),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            '${video.author.username} • ${video.viewCount} views • ${timeago.format(video.timestamp)}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(fontSize: 14.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.more_vert, size: 20.0),
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