import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zemingo_flutter/features/news_feed/data/models/news_model.dart';
import 'package:zemingo_flutter/features/news_feed/data/sources/news_feed_remote.dart';

part 'news_feed_state.freezed.dart';

enum NewsFeedStatus{
  loading,
  listening,
  success;
}

@freezed
class NewsFeedState with _$NewsFeedState {
  const factory NewsFeedState({
    @Default(NewsFeedStatus.loading) NewsFeedStatus status,
    @Default({}) Map<NewsFeedRepoType,List<NewsModel>> feed,
    @Default(NewsFeedType.cars) NewsFeedType activeTab,
    NewsModel? selectedNews,
  }) = _NewsFeedState;
}

enum NewsFeedType{
  cars,
  cultureAndSports;
}