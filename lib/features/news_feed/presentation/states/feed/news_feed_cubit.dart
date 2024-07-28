import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:zemingo_flutter/features/news_feed/data/models/news_model.dart';
import 'package:zemingo_flutter/features/news_feed/domain/usercase/news_feed_usecases.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/states/feed/news_feed_state.dart';
import 'package:zemingo_flutter/features/news_feed/presentation/states/labels/news_labels_bloc.dart';

import '../../../data/sources/news_feed_remote.dart';

part 'news_feed_selector.dart';

class NewsFeedCubit extends Cubit<NewsFeedState> {
  //stream subscriptions:
  StreamSubscription? _carsStreamSubscription;
  StreamSubscription? _cultureStreamSubscription;
  StreamSubscription? _sportsStreamSubscription;

  //use cases:
  final GetCarsFeedUseCase _carsUseCase;
  final GetSportsFeedUseCase _sportsUseCase;
  final GetCultureFeedUseCase _cultureUseCase;


  NewsFeedCubit({
    required GetCarsFeedUseCase carsUseCase,
    required GetSportsFeedUseCase sportsUseCase,
    required GetCultureFeedUseCase cultureUseCase,
  })  : _carsUseCase = carsUseCase,
        _sportsUseCase = sportsUseCase,
        _cultureUseCase = cultureUseCase,
        super(const NewsFeedState());

  void initStream() {
    _buildCarsSubscription();
    _buildSportsSubscription();
    _buildCultureSubscription();
    _carsUseCase.call();
    _sportsUseCase.call();
    _cultureUseCase.call();
  }

  //subscriptions:
  void _buildCarsSubscription() {
    _carsStreamSubscription ??= _carsUseCase.stream.listen((feed) {
      log("cars return : $feed");
      final newFeed = Map<NewsFeedRepoType, List<NewsModel>>.from(state.feed);
      newFeed[NewsFeedRepoType.cars] = feed;
      _callCarsLoop();
      emit(_refreshNewsFeed(newFeed));
    });
  }

  NewsFeedState _refreshNewsFeed(Map<NewsFeedRepoType, List<NewsModel>> newFeed) => state.copyWith(feed: newFeed, status: NewsFeedStatus.success);

  void _buildSportsSubscription() {
    _sportsStreamSubscription ??= _sportsUseCase.stream.listen((feed) {
      log("sports return : $feed");
      final newFeed = Map<NewsFeedRepoType, List<NewsModel>>.from(state.feed);
      newFeed[NewsFeedRepoType.sport] = feed;
      _callSportsLoop();
      emit(_refreshNewsFeed(newFeed));
    });
  }

  void _buildCultureSubscription() {
    _cultureStreamSubscription ??= _cultureUseCase.stream.listen((feed) {
      log("culture return : $feed");
      final newFeed = Map<NewsFeedRepoType, List<NewsModel>>.from(state.feed);
      newFeed[NewsFeedRepoType.culture] = feed;
      _callCultureLoop();
      emit(_refreshNewsFeed(newFeed));
    });
  }

  //end of subscriptions

  void onCardTap(NewsModel news){
    emit(state.copyWith(status: NewsFeedStatus.listening, selectedNews: news));
  }

  void onAppResume(){
    onTabChange(state.activeTab.index);
    emit(state.copyWith(status: NewsFeedStatus.success));
  }

  void onAppPaused(){
    _pauseCars();
    _pauseCultureAndSports();
  }


  //loop handlers:
  Future _callCarsLoop() async {
    await Future.delayed(const Duration(seconds: 5));
    _displayLoader();
    _carsUseCase.call();
  }

  Future _callCultureLoop() async {
    await Future.delayed(const Duration(seconds: 5));
    _displayLoader();
    _cultureUseCase.call();
  }

  Future _callSportsLoop() async {
    await Future.delayed(const Duration(seconds: 5));
    _displayLoader();
    _sportsUseCase.call();
  }

  void _displayLoader() {
    emit(state.copyWith(status: NewsFeedStatus.loading));
  }

  onTabChange(int index) {
    final type = NewsFeedType.values[index];
    emit(state.copyWith(activeTab: type));

    switch (type) {

      case NewsFeedType.cars:
        _resumeCars();
        _pauseCultureAndSports();

      case NewsFeedType.cultureAndSports:
        _pauseCars();
        _resumeCultureAndSports();
    }
  }

  void _resumeCars() {
    _carsStreamSubscription?.resume();
  }

  void _pauseCars() {
    _carsStreamSubscription?.pause();
  }

  void _resumeCultureAndSports() {
    _sportsStreamSubscription?.resume();
    _cultureStreamSubscription?.resume();
  }

  void _pauseCultureAndSports() {
    _sportsStreamSubscription?.pause();
    _cultureStreamSubscription?.pause();
  }

  dispose() {
    _carsStreamSubscription?.cancel();
    _cultureStreamSubscription?.cancel();
    _sportsStreamSubscription?.cancel();
  }
}
