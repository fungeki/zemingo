part of 'news_feed_repo.dart';

@Singleton(as: NewsFeedRepo)
class NewsFeedRepoDefault extends NewsFeedRepo {
  final NewsFeedRemote _remote;

  NewsFeedRepoDefault({required NewsFeedRemote remote}) : _remote = remote;

  @override
  Future<List<NewsModel>> getCars() async {
    return await _remote.getFeed(NewsFeedRepoType.cars);
  }

  @override
  Future<List<NewsModel>> getCulture() async {
    return await _remote.getFeed(NewsFeedRepoType.culture);
  }

  @override
  Future<List<NewsModel>> getSports() async {
    return await _remote.getFeed(NewsFeedRepoType.sport);
  }
}
