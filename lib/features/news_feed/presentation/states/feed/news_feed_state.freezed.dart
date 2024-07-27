// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_feed_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsFeedState {
  NewsFeedStatus get status => throw _privateConstructorUsedError;
  Map<NewsFeedRepoType, List<NewsModel>> get feed =>
      throw _privateConstructorUsedError;
  NewsFeedType get activeTab => throw _privateConstructorUsedError;
  NewsModel? get selectedNews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsFeedStateCopyWith<NewsFeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsFeedStateCopyWith<$Res> {
  factory $NewsFeedStateCopyWith(
          NewsFeedState value, $Res Function(NewsFeedState) then) =
      _$NewsFeedStateCopyWithImpl<$Res, NewsFeedState>;
  @useResult
  $Res call(
      {NewsFeedStatus status,
      Map<NewsFeedRepoType, List<NewsModel>> feed,
      NewsFeedType activeTab,
      NewsModel? selectedNews});
}

/// @nodoc
class _$NewsFeedStateCopyWithImpl<$Res, $Val extends NewsFeedState>
    implements $NewsFeedStateCopyWith<$Res> {
  _$NewsFeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? feed = null,
    Object? activeTab = null,
    Object? selectedNews = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NewsFeedStatus,
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as Map<NewsFeedRepoType, List<NewsModel>>,
      activeTab: null == activeTab
          ? _value.activeTab
          : activeTab // ignore: cast_nullable_to_non_nullable
              as NewsFeedType,
      selectedNews: freezed == selectedNews
          ? _value.selectedNews
          : selectedNews // ignore: cast_nullable_to_non_nullable
              as NewsModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsFeedStateImplCopyWith<$Res>
    implements $NewsFeedStateCopyWith<$Res> {
  factory _$$NewsFeedStateImplCopyWith(
          _$NewsFeedStateImpl value, $Res Function(_$NewsFeedStateImpl) then) =
      __$$NewsFeedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NewsFeedStatus status,
      Map<NewsFeedRepoType, List<NewsModel>> feed,
      NewsFeedType activeTab,
      NewsModel? selectedNews});
}

/// @nodoc
class __$$NewsFeedStateImplCopyWithImpl<$Res>
    extends _$NewsFeedStateCopyWithImpl<$Res, _$NewsFeedStateImpl>
    implements _$$NewsFeedStateImplCopyWith<$Res> {
  __$$NewsFeedStateImplCopyWithImpl(
      _$NewsFeedStateImpl _value, $Res Function(_$NewsFeedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? feed = null,
    Object? activeTab = null,
    Object? selectedNews = freezed,
  }) {
    return _then(_$NewsFeedStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NewsFeedStatus,
      feed: null == feed
          ? _value._feed
          : feed // ignore: cast_nullable_to_non_nullable
              as Map<NewsFeedRepoType, List<NewsModel>>,
      activeTab: null == activeTab
          ? _value.activeTab
          : activeTab // ignore: cast_nullable_to_non_nullable
              as NewsFeedType,
      selectedNews: freezed == selectedNews
          ? _value.selectedNews
          : selectedNews // ignore: cast_nullable_to_non_nullable
              as NewsModel?,
    ));
  }
}

/// @nodoc

class _$NewsFeedStateImpl implements _NewsFeedState {
  const _$NewsFeedStateImpl(
      {this.status = NewsFeedStatus.loading,
      final Map<NewsFeedRepoType, List<NewsModel>> feed = const {},
      this.activeTab = NewsFeedType.cars,
      this.selectedNews})
      : _feed = feed;

  @override
  @JsonKey()
  final NewsFeedStatus status;
  final Map<NewsFeedRepoType, List<NewsModel>> _feed;
  @override
  @JsonKey()
  Map<NewsFeedRepoType, List<NewsModel>> get feed {
    if (_feed is EqualUnmodifiableMapView) return _feed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_feed);
  }

  @override
  @JsonKey()
  final NewsFeedType activeTab;
  @override
  final NewsModel? selectedNews;

  @override
  String toString() {
    return 'NewsFeedState(status: $status, feed: $feed, activeTab: $activeTab, selectedNews: $selectedNews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsFeedStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._feed, _feed) &&
            (identical(other.activeTab, activeTab) ||
                other.activeTab == activeTab) &&
            (identical(other.selectedNews, selectedNews) ||
                other.selectedNews == selectedNews));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_feed), activeTab, selectedNews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsFeedStateImplCopyWith<_$NewsFeedStateImpl> get copyWith =>
      __$$NewsFeedStateImplCopyWithImpl<_$NewsFeedStateImpl>(this, _$identity);
}

abstract class _NewsFeedState implements NewsFeedState {
  const factory _NewsFeedState(
      {final NewsFeedStatus status,
      final Map<NewsFeedRepoType, List<NewsModel>> feed,
      final NewsFeedType activeTab,
      final NewsModel? selectedNews}) = _$NewsFeedStateImpl;

  @override
  NewsFeedStatus get status;
  @override
  Map<NewsFeedRepoType, List<NewsModel>> get feed;
  @override
  NewsFeedType get activeTab;
  @override
  NewsModel? get selectedNews;
  @override
  @JsonKey(ignore: true)
  _$$NewsFeedStateImplCopyWith<_$NewsFeedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
