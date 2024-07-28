import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zemingo_flutter/core/styles.dart';
import 'package:zemingo_flutter/features/news_feed/data/models/news_model.dart';
import 'package:zemingo_flutter/features/news_feed/data/sources/news_feed_remote.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/screens/tabs/news_feed_tabs_list.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/screens/widgets/news_feed_row.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/states/feed/news_feed_cubit.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/states/feed/news_feed_state.dart';

part 'sections/news_feed_tabs.dart';

part 'tabs/news_feed_tab.dart';

part 'lists/news_feed_list.dart';
///
/// TODO: display cached feed with hive...
///
class NewsFeedScreen extends StatefulWidget {
  const NewsFeedScreen({super.key, required this.onNewsTap});

  final Function(String) onNewsTap;

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  late TabController _tabController;

  NewsFeedCubit? _cubit;

  @override
  void initState() {
    _tabController =
        TabController(length: NewsFeedTabsList.feedTabs.length, vsync: this);
    _tabController.addListener(() => _cubit?.onTabChange(_tabController.index));
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NewsFeedCubit, NewsFeedState>(
      listenWhen: (_, current) => current.status == NewsFeedStatus.listening,
      listener: (context, state) async {
        final selectedNews = state.selectedNews;
        if (selectedNews != null){
          widget.onNewsTap.call(selectedNews.title);
          final uri = Uri.parse(selectedNews.url);
          await launchUrl(
            uri,
            mode: LaunchMode.externalApplication,
          );
        }
        // _cubit?.onAppResume();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Feed!")),
          bottom: TabBar(
              labelStyle: ZTextStyles.tabHeadline,
              controller: _tabController,
              tabs: NewsFeedTabsList.feedTabs),
        ),
        body: SafeArea(
          child: _NewsFeedTabs(
            tabController: _tabController,
            onCardTap: (NewsModel news) => _cubit?.onCardTap(news),
          ),
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    _cubit = BlocProvider.of<NewsFeedCubit>(context);
    super.didChangeDependencies();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed){
      _cubit?.onAppResume();
    }
    if (state == AppLifecycleState.paused){
      _cubit?.onAppPaused();
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(() {});
    _tabController.dispose();
    _cubit?.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
