// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_labels_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsLabelsState {
  NewsLabelsBlocStatus get status => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String? get lastTap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsLabelsStateCopyWith<NewsLabelsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsLabelsStateCopyWith<$Res> {
  factory $NewsLabelsStateCopyWith(
          NewsLabelsState value, $Res Function(NewsLabelsState) then) =
      _$NewsLabelsStateCopyWithImpl<$Res, NewsLabelsState>;
  @useResult
  $Res call({NewsLabelsBlocStatus status, String date, String? lastTap});
}

/// @nodoc
class _$NewsLabelsStateCopyWithImpl<$Res, $Val extends NewsLabelsState>
    implements $NewsLabelsStateCopyWith<$Res> {
  _$NewsLabelsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? date = null,
    Object? lastTap = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NewsLabelsBlocStatus,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      lastTap: freezed == lastTap
          ? _value.lastTap
          : lastTap // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsLabelsStateImplCopyWith<$Res>
    implements $NewsLabelsStateCopyWith<$Res> {
  factory _$$NewsLabelsStateImplCopyWith(_$NewsLabelsStateImpl value,
          $Res Function(_$NewsLabelsStateImpl) then) =
      __$$NewsLabelsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewsLabelsBlocStatus status, String date, String? lastTap});
}

/// @nodoc
class __$$NewsLabelsStateImplCopyWithImpl<$Res>
    extends _$NewsLabelsStateCopyWithImpl<$Res, _$NewsLabelsStateImpl>
    implements _$$NewsLabelsStateImplCopyWith<$Res> {
  __$$NewsLabelsStateImplCopyWithImpl(
      _$NewsLabelsStateImpl _value, $Res Function(_$NewsLabelsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? date = null,
    Object? lastTap = freezed,
  }) {
    return _then(_$NewsLabelsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NewsLabelsBlocStatus,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      lastTap: freezed == lastTap
          ? _value.lastTap
          : lastTap // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewsLabelsStateImpl implements _NewsLabelsState {
  const _$NewsLabelsStateImpl(
      {this.status = NewsLabelsBlocStatus.feedDisplay,
      this.date = "",
      this.lastTap});

  @override
  @JsonKey()
  final NewsLabelsBlocStatus status;
  @override
  @JsonKey()
  final String date;
  @override
  final String? lastTap;

  @override
  String toString() {
    return 'NewsLabelsState(status: $status, date: $date, lastTap: $lastTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsLabelsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.lastTap, lastTap) || other.lastTap == lastTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, date, lastTap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsLabelsStateImplCopyWith<_$NewsLabelsStateImpl> get copyWith =>
      __$$NewsLabelsStateImplCopyWithImpl<_$NewsLabelsStateImpl>(
          this, _$identity);
}

abstract class _NewsLabelsState implements NewsLabelsState {
  const factory _NewsLabelsState(
      {final NewsLabelsBlocStatus status,
      final String date,
      final String? lastTap}) = _$NewsLabelsStateImpl;

  @override
  NewsLabelsBlocStatus get status;
  @override
  String get date;
  @override
  String? get lastTap;
  @override
  @JsonKey(ignore: true)
  _$$NewsLabelsStateImplCopyWith<_$NewsLabelsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
