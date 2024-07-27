import 'dart:developer';

class NewsModel{
  final String title;
  final String url;
  final String? imageUrl;

  NewsModel({required this.title, required this.url, this.imageUrl});

  factory NewsModel.fromJson(Map<String, dynamic> json){
    final description = json['description'] as String?;
    final descSplit = description?.split('\'');
    String? imageUrl;
    if (descSplit != null){
      try{
        imageUrl = descSplit.firstWhere((element) => element.endsWith('jpg'));
      }catch(error){
        log("no image");
      }
    }
    log(imageUrl.toString());
    return NewsModel(title: json['title'], url: json['link'], imageUrl: imageUrl);
  }
}