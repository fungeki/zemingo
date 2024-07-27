import 'package:flutter/material.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/states/labels/news_labels_bloc.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/states/labels/news_labels_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class NewsLabelsSelector<T> extends BlocSelector<NewsLabelsBloc, NewsLabelsState, T> {
  NewsLabelsSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(
    builder: (_, value) => builder(value),
  );
}

class NewsLabelsDateSelector extends NewsLabelsSelector<String> {
  NewsLabelsDateSelector(Widget Function(String) builder, {super.key})
      : super(
    selector: (state) => state.date,
    builder: builder,
  );
}

class NewsLabelsNewsSelector extends NewsLabelsSelector<String> {
  NewsLabelsNewsSelector(Widget Function(String) builder, {super.key})
      : super(
    selector: (state) => state.lastTap ?? "",
    builder: builder,
  );
}