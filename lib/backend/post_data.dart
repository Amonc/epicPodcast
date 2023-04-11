import 'package:dio/dio.dart';
import 'package:epicpodcast/backend/model/post.dart';

class PostData{
  final String _apiUrl="https://weareinfinityx.com/wp-json/wp/v2/posts?per_page=100";
  Future<List<Post>> getAllPosts() async {
  var response= await  Dio().get(_apiUrl);

  List dataList=response.data;
    return dataList.map((e) => Post.fromJson(e)).toList();
  }
}