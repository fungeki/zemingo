part of '../news_feed_screen.dart';

class _NewsFeedTabs extends StatelessWidget {
  const _NewsFeedTabs({
    super.key,
    required this.tabController, required this.onCardTap,
  });

  final TabController tabController;
  final Function(NewsModel) onCardTap;

  @override
  Widget build(BuildContext context) {
    return NewsFeedFeedSelector((feed) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TabBarView(
          controller: tabController,
          children: [
            _NewsFeedList(
              feed: feed[NewsFeedRepoType.cars] ?? [], onCardTap: (NewsModel news) => onCardTap.call(news),
            ),
            _NewsFeedList(
              feed: [
                ...(feed[NewsFeedRepoType.culture] ?? []),
                ...(feed[NewsFeedRepoType.sport] ?? [])
              ], onCardTap: (NewsModel news) => onCardTap.call(news),
            ),
          ],
        ),
      );
    });
  }
}
