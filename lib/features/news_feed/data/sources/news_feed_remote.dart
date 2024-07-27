import 'dart:convert';
import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:xml/xml.dart';
import 'package:xml2json/xml2json.dart';
import 'package:zemingo_flutter/core/network.dart';
import 'package:zemingo_flutter/features/news_feed/data/models/news_model.dart';

@singleton
class NewsFeedRemote {
  static const _rootUrl = 'https://www.ynet.co.il/Integration/StoryRss';
  static const _suffix = '.xml';
  final NetworkManager _networkManager;

  NewsFeedRemote({required NetworkManager networkManager})
      : _networkManager = networkManager;

  Future<List<NewsModel>> getFeed(NewsFeedRepoType type) async{
    final typeNum = type.getNumber();
    final url = '$_rootUrl$typeNum$_suffix';
    try {
      final response =
          await _networkManager.request(RequestMethod.get, url);
      final xml2json = Xml2Json();
      xml2json.parse(response.data);
      final jsonString = xml2json.toParker();
      final jsonObj = json.decode(jsonString);
      final items = jsonObj['rss']['channel']['item'] as List;
      final newsModels = items
          .map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return newsModels;
    } catch (error, stackTrace) {
      log(error.toString());
      log(stackTrace.toString());
      return [];
    }
  }
}

enum NewsFeedRepoType{
  cars,
  sport,
  culture;
}

extension NewsFeedRepoTypeX on NewsFeedRepoType{
  int getNumber() {
    return switch (this){
      NewsFeedRepoType.cars => 550,
      NewsFeedRepoType.sport => 3,
      NewsFeedRepoType.culture => 538,
    };
  }
}
