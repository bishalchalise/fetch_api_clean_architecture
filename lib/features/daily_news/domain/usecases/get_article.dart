import 'package:news_app_clean_arch/core/resources/data_state.dart';
import 'package:news_app_clean_arch/core/usecases/usecase.dart';
import 'package:news_app_clean_arch/features/daily_news/data/models/articles.dart';
import 'package:news_app_clean_arch/features/daily_news/domain/repositories/article_repository.dart';

class GetArticleUseCase
    implements UseCase<DataState<ArticleModel>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);

  @override
  Future<DataState<ArticleModel>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
