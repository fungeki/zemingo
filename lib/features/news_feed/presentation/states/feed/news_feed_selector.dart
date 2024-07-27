part of 'news_feed_cubit.dart';

abstract class NewsFeedSelector<T> extends BlocSelector<NewsFeedCubit, NewsFeedState, T> {
  NewsFeedSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(
    builder: (_, value) => builder(value),
  );
}

class NewsFeedStatusSelector extends NewsFeedSelector<NewsFeedStatus> {
  NewsFeedStatusSelector(Widget Function(NewsFeedStatus) builder, {super.key})
      : super(
    selector: (state) => state.status,
    builder: builder,
  );
}

class NewsFeedFeedSelector extends NewsFeedSelector<Map<NewsFeedRepoType,List<NewsModel>>> {
  NewsFeedFeedSelector(Widget Function(Map<NewsFeedRepoType,List<NewsModel>>) builder, {super.key})
      : super(
    selector: (state) => state.feed,
    builder: builder,
  );
}

