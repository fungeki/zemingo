import 'package:freezed_annotation/freezed_annotation.dart';
part 'news_labels_state.freezed.dart';

enum NewsLabelsBlocStatus {
  feedDisplay(true),
  error(false),
  labelDisplay(false);

  final bool isNavState;

  const NewsLabelsBlocStatus(this.isNavState);
}

@freezed
class NewsLabelsState with _$NewsLabelsState {
  const factory NewsLabelsState({
    @Default(NewsLabelsBlocStatus.feedDisplay) NewsLabelsBlocStatus status,
    @Default("") String date,
    String? lastTap,
  }) = _NewsLabelsState;
}
