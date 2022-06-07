class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageUrl,
    required this.subscribers,
  });
}

const User currentUser = User(
  username: 'Naga Bhaskar',
  profileImageUrl:
      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.askmen.com%2F1080x540%2F2016%2F01%2F25-021526-facebook_profile_picture_affects_chances_of_getting_hired.jpg&f=1&nofb=1',
  subscribers: '100K',
);

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String url;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}

final List<Video> videos = [
  Video(
    id: 'F_7ZoAQ3aJM',
    author: currentUser,
    title: 'Amazing Nature | Drone | Waterfalls | Aerial View | No Copyright Videos',
    thumbnailUrl: 'https://i.ytimg.com/vi/F_7ZoAQ3aJM/0.jpg',
    
    duration: '8:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4', url: "https://www.youtube.com/watch?v=F_7ZoAQ3aJM",
  ),
  Video(
    author: currentUser,
    id: 'Zv11L-ZfrSg',
    title:
        'Ultimate Wild Animals Collection in 8K ULTRA HD / 8K TV',
    thumbnailUrl: 'https://img.youtube.com/vi/Zv11L-ZfrSg/maxresdefault.jpg',
    duration: '22:06',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '8K',
    likes: '485',
    dislikes: '8', url: "https://www.youtube.com/watch?v=Zv11L-ZfrSg",
  ),
  Video(
    id: 'KKaleb7yZv8',
    author: currentUser,
    title: ' Lofi Background Music No Copyright Vlog Hip Hop Royalty Free Music',
    thumbnailUrl: 'https://i.ytimg.com/vi/KKaleb7yZv8/0.jpg',
    duration: '10:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4', url: "https://www.youtube.com/watch?v=KKaleb7yZv8",
  ),
];

final List<Video> suggestedVideos = [
  Video(
    id: 'rJKN_880b-M',
    author: currentUser,
    title: 'Flutter Netflix Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'https://i.ytimg.com/vi/rJKN_880b-M/0.jpg',
    duration: '1:13:15',
    timestamp: DateTime(2020, 8, 22),
    viewCount: '32K',
    likes: '1.9k',
    dislikes: '7', url: "https://www.youtube.com/watch?v=F_7ZoAQ3aJM",
  ),
  Video(
    id: 'HvLb5gdUfDE',
    author: currentUser,
    title: 'Flutter Facebook Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'https://i.ytimg.com/vi/HvLb5gdUfDE/0.jpg',
    duration: '1:52:12',
    timestamp: DateTime(2020, 8, 7),
    viewCount: '190K',
    likes: '9.3K',
    dislikes: '45', url: "https://www.youtube.com/watch?v=F_7ZoAQ3aJM",
  ),
  Video(
    id: 'h-igXZCCrrc',
    author: currentUser,
    title: 'Flutter Chat UI Tutorial | Apps From Scratch',
    thumbnailUrl: 'https://i.ytimg.com/vi/h-igXZCCrrc/0.jpg',
    duration: '1:03:58',
    timestamp: DateTime(2019, 10, 17),
    viewCount: '358K',
    likes: '20k',
    dislikes: '85', url: "https://www.youtube.com/watch?v=F_7ZoAQ3aJM",
  ),
];
