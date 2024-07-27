import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_labels_event.freezed.dart';

@freezed
class NewsLabelsEvent with _$NewsLabelsEvent{
  const factory NewsLabelsEvent.newsLabelsRefreshLabelsTimer() = NewsLabelsRefreshLabelsTimer;
  const factory NewsLabelsEvent.newsLabelsGoToFeed() = NewsLabelsGoToFeed;
}