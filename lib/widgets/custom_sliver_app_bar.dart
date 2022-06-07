import 'package:flutter/material.dart';
import 'package:youtubeclone/data.dart';
import 'package:youtubeclone/widgets/searchfile.dart';


class CustomSliverAppBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // pri
    // nt(v!.author);
    return SliverAppBar(
      floating: true,
      leadingWidth: 100.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Image.asset('assests/yt_logo_dark.png'),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.cast),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            showSearch(context: context, delegate: MySearchDelegate());
          },
        ),
        IconButton(
          iconSize: 40.0,
          icon: CircleAvatar(
            foregroundImage: NetworkImage(currentUser.profileImageUrl),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class MySearchDelegate extends SearchDelegate{
    Video? vid;
   
    List<Video> resu = videos.toList();
   @override
  String get searchFieldLabel => 'Search YouTube';
  @override
ThemeData appBarTheme(BuildContext context) {
assert(context != null);
final ThemeData theme = Theme.of(context).copyWith(
   textSelectionTheme: TextSelectionThemeData(
     cursorColor: Colors.red
   ),

inputDecorationTheme: InputDecorationTheme(
  filled: true,
  fillColor: Colors.grey[800],
  focusedBorder: OutlineInputBorder(borderSide: BorderSide.none,)
),
  appBarTheme: AppBarTheme(
    toolbarHeight: 35,
    color: Colors.black
  ),
  textTheme: TextTheme(
    
    headline6: TextStyle(
      color: Colors.white,
      fontSize: 16.0,
    ),
  ),
);
assert(theme != null);
return theme;
}

  @override
  List<Widget>? buildActions(BuildContext context) =>
   
    [IconButton(onPressed: (){}, icon: Icon(Icons.mic))];
    // Container();
  

  @override
  Widget? buildLeading(BuildContext context) {
    
    // TODO: implement buildLeading
    // throw UnimplementedError();
    Container();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    // throw UnimplementedError();
    return Container();
   //return SearchResult(video: resu, hasPadding: true);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
     var v = vid;
    List<Video> suggestions = resu.where((vi) {
      final result = vi.toString().toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    // TODO: implement buildSuggestions
    // throw UnimplementedError();
    return Container(
      child: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context,index){
           final sug = suggestions[index] ;
          // print(v!=null?);
return ListTile(
  // ignore: unrelated_type_equality_checks
  title:Text(sug.title),

  onTap: (){
     query = sug.title;
     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchResult(video: sug, hasPadding: true)));
     showResults(context);
  },
);
      }),
    );
// return Container();
  }

}

