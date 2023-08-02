import 'package:news_app_clean_arch/core/resources/data_state.dart';
import 'package:news_app_clean_arch/features/daily_news/data/models/articles.dart';

abstract class ArticleRepository {
  Future<DataState<ArticleModel>> getNewsArticles();
}
