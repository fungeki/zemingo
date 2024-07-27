part of '../news_feed_screen.dart';

class NewsFeedTab extends StatelessWidget {
  const NewsFeedTab({super.key, required this.text,});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Tab(
      text: text,

    );
  }
}
