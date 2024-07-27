import 'package:injectable/injectable.dart';
import 'package:zemingo_flutter/features/news_feed/data/models/news_model.dart';
import 'package:zemingo_flutter/features/news_feed/data/sources/news_feed_remote.dart';

part 'news_feed_repo.default.dart';

abstract class NewsFeedRepo{
  Future<List<NewsModel>> getCars();
  Future<List<NewsModel>> getCulture();
  Future<List<NewsModel>> getSports();
}

