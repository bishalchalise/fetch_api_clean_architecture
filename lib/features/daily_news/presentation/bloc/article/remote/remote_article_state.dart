

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app_clean_arch/features/daily_news/data/models/articles.dart';

abstract class RemoteArticlesState extends Equatable {
  final ArticleModel? articles;
  final DioException? error;
  
  const RemoteArticlesState({this.articles,this.error});
  
  @override
  List<Object> get props => [articles!, error!];
}

class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticlesState {
  const RemoteArticlesDone(ArticleModel article) : super(articles: article);
}

class RemoteArticlesError extends RemoteArticlesState {
  const RemoteArticlesError(DioException error) : super(error: error);
}