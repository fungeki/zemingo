// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:zemingo_flutter/core/network.dart' as _i4;
import 'package:zemingo_flutter/di.dart' as _i8;
import 'package:zemingo_flutter/features/news_feed/data/sources/news_feed_remote.dart'
    as _i5;
import 'package:zemingo_flutter/features/news_feed/domain/repo/news_feed_repo.dart'
    as _i6;
import 'package:zemingo_flutter/features/news_feed/domain/usercase/news_feed_usecases.dart'
    as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.Dio>(() => registerModule.dio);
    gh.singleton<_i4.NetworkManager>(
        () => _i4.NetworkManager(dio: gh<_i3.Dio>()));
    gh.singleton<_i5.NewsFeedRemote>(
        () => _i5.NewsFeedRemote(networkManager: gh<_i4.NetworkManager>()));
    gh.singleton<_i6.NewsFeedRepo>(
        () => _i6.NewsFeedRepoDefault(remote: gh<_i5.NewsFeedRemote>()));
    gh.singleton<_i7.GetCarsFeedUseCase>(
        () => _i7.GetCarsFeedUseCase(feedRepo: gh<_i6.NewsFeedRepo>()));
    gh.singleton<_i7.GetSportsFeedUseCase>(
        () => _i7.GetSportsFeedUseCase(feedRepo: gh<_i6.NewsFeedRepo>()));
    gh.singleton<_i7.GetCultureFeedUseCase>(
        () => _i7.GetCultureFeedUseCase(feedRepo: gh<_i6.NewsFeedRepo>()));
    return this;
  }
}

class _$RegisterModule extends _i8.RegisterModule {}
