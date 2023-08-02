import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_clean_arch/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:news_app_clean_arch/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:news_app_clean_arch/injection_container.dart';

import 'features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';

void main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(GetArticles()),
      child: const MaterialApp(
        title: 'News App',
        home: DailyNews(),
      ),
    );
  }
}
