import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/states/labels/news_labels_event.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/states/labels/news_labels_state.dart';

class NewsLabelsBloc extends Bloc<NewsLabelsEvent, NewsLabelsState> {
  String lastTap = "";

  NewsLabelsBloc() : super(NewsLabelsState()) {
    //labels:
    on<NewsLabelsRefreshLabelsTimer>(_newsFeedRefreshLabelsTimer);

    //nav:
    on<NewsLabelsGoToFeed>(_newsLabelsGoToFeed);
  }

  FutureOr<void> _newsFeedRefreshLabelsTimer(
      event, Emitter<NewsLabelsState> emit) {
    final now = DateTime.now();
    final formatDate = DateFormat('dd.MM.yy');
    final formatTime = DateFormat('HH:mm');
    final displayDate = '${formatTime.format(now)} - ${formatDate.format(now)}';
    final tapStr = lastTap.isEmpty ? null : lastTap;
    emit(state.copyWith(
        date: displayDate,
        status: NewsLabelsBlocStatus.labelDisplay,
        lastTap: tapStr));
  }

  FutureOr<void> _newsLabelsGoToFeed(event, Emitter<NewsLabelsState> emit) {
    emit(state.copyWith(status: NewsLabelsBlocStatus.feedDisplay));
  }
}
