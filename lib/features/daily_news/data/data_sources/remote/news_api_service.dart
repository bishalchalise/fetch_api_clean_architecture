import 'package:dio/dio.dart';
import 'package:news_app_clean_arch/core/constants/constants.dart';
import 'package:news_app_clean_arch/features/daily_news/data/models/articles.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsAPIBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;
  @GET('/top-headlines')
  Future<HttpResponse<ArticleModel>> getNewsArticle({
      @Query("apiKey") String ? apiKey, 
      @Query("country") String ? country, 
      @Query("category") String ? category , 


  });
}
 