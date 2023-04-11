import 'package:epicpodcast/backend/model/post.dart';
import 'package:epicpodcast/backend/post_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Epic Podcast"),
      ),
      body: FutureBuilder(
        future: PostData().getAllPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          List<Post> posts = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            itemCount: posts.length,
            itemBuilder: (BuildContext context, int index) {
              Post post = posts[index];
              return Html(
                data: post.content!['rendered'],
              );
            },
          );
        },
      ),
    );
  }
}
