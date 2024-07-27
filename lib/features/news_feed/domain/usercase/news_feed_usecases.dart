import 'package:injectable/injectable.dart';
import 'package:zemingo_flutter/core/usecases.dart';
import 'package:zemingo_flutter/features/news_feed/data/models/news_model.dart';
import 'package:zemingo_flutter/features/news_feed/domain/repo/news_feed_repo.dart';

@singleton
class GetCarsFeedUseCase extends UseCase<List<NewsModel>, NoParams?>{

  final NewsFeedRepo _feedRepo;

  GetCarsFeedUseCase({required NewsFeedRepo feedRepo}) : _feedRepo = feedRepo;

  void call()async{
    final cars = await _feedRepo.getCars();
    add(cars);
  }
}

@singleton
class GetSportsFeedUseCase extends UseCase<List<NewsModel>, NoParams?>{

  final NewsFeedRepo _feedRepo;

  GetSportsFeedUseCase({required NewsFeedRepo feedRepo}) : _feedRepo = feedRepo;

  void call()async{
    final sports = await _feedRepo.getSports();
    add(sports);
  }
}

@singleton
class GetCultureFeedUseCase extends UseCase<List<NewsModel>, NoParams?>{

  final NewsFeedRepo _feedRepo;

  GetCultureFeedUseCase({required NewsFeedRepo feedRepo}) : _feedRepo = feedRepo;

  void call()async{
    final culture = await _feedRepo.getCulture();
    add(culture);
  }
}