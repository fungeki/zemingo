part of '../news_feed_screen.dart';

class _NewsFeedList extends StatelessWidget {
  const _NewsFeedList({super.key, required this.feed, required this.onCardTap});

  final List<NewsModel> feed;
  final Function(NewsModel) onCardTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemCount: feed.length,
        itemBuilder: (context, index) {
          final news = feed[index];
          return GestureDetector(
              onTap: () => onCardTap.call(news),
              child: NewsFeedRow(newsModel: news));
        }, separatorBuilder: (BuildContext context, int index) => SizedBox(height: 8,),);
  }
}
