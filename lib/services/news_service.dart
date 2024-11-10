import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  getNews() async {
    Response response = await dio.get('https://newsapi.org/v2/top-headlines?apikey=3c88955c487e4d9db668f011dd85e737&country=us&category=general');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];

    // for(var article in articles){
    //   print(article['author']);
    // }
    
  }
}
