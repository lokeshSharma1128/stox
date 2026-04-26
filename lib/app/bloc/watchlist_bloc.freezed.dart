// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watchlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WatchlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String watchlistName, int oldIndex, int newIndex)
        reorderStocks,
    required TResult Function(String watchlistName, List<Stock> stocks)
        saveWatchlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String watchlistName, int oldIndex, int newIndex)?
        reorderStocks,
    TResult? Function(String watchlistName, List<Stock> stocks)? saveWatchlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String watchlistName, int oldIndex, int newIndex)?
        reorderStocks,
    TResult Function(String watchlistName, List<Stock> stocks)? saveWatchlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReorderStocks value) reorderStocks,
    required TResult Function(_SaveWatchlist value) saveWatchlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReorderStocks value)? reorderStocks,
    TResult? Function(_SaveWatchlist value)? saveWatchlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReorderStocks value)? reorderStocks,
    TResult Function(_SaveWatchlist value)? saveWatchlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistEventCopyWith<$Res> {
  factory $WatchlistEventCopyWith(
          WatchlistEvent value, $Res Function(WatchlistEvent) then) =
      _$WatchlistEventCopyWithImpl<$Res, WatchlistEvent>;
}

/// @nodoc
class _$WatchlistEventCopyWithImpl<$Res, $Val extends WatchlistEvent>
    implements $WatchlistEventCopyWith<$Res> {
  _$WatchlistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$WatchlistEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'WatchlistEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String watchlistName, int oldIndex, int newIndex)
        reorderStocks,
    required TResult Function(String watchlistName, List<Stock> stocks)
        saveWatchlist,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String watchlistName, int oldIndex, int newIndex)?
        reorderStocks,
    TResult? Function(String watchlistName, List<Stock> stocks)? saveWatchlist,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String watchlistName, int oldIndex, int newIndex)?
        reorderStocks,
    TResult Function(String watchlistName, List<Stock> stocks)? saveWatchlist,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReorderStocks value) reorderStocks,
    required TResult Function(_SaveWatchlist value) saveWatchlist,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReorderStocks value)? reorderStocks,
    TResult? Function(_SaveWatchlist value)? saveWatchlist,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReorderStocks value)? reorderStocks,
    TResult Function(_SaveWatchlist value)? saveWatchlist,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WatchlistEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ReorderStocksImplCopyWith<$Res> {
  factory _$$ReorderStocksImplCopyWith(
          _$ReorderStocksImpl value, $Res Function(_$ReorderStocksImpl) then) =
      __$$ReorderStocksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String watchlistName, int oldIndex, int newIndex});
}

/// @nodoc
class __$$ReorderStocksImplCopyWithImpl<$Res>
    extends _$WatchlistEventCopyWithImpl<$Res, _$ReorderStocksImpl>
    implements _$$ReorderStocksImplCopyWith<$Res> {
  __$$ReorderStocksImplCopyWithImpl(
      _$ReorderStocksImpl _value, $Res Function(_$ReorderStocksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watchlistName = null,
    Object? oldIndex = null,
    Object? newIndex = null,
  }) {
    return _then(_$ReorderStocksImpl(
      watchlistName: null == watchlistName
          ? _value.watchlistName
          : watchlistName // ignore: cast_nullable_to_non_nullable
              as String,
      oldIndex: null == oldIndex
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: null == newIndex
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReorderStocksImpl implements _ReorderStocks {
  const _$ReorderStocksImpl(
      {required this.watchlistName,
      required this.oldIndex,
      required this.newIndex});

  @override
  final String watchlistName;
  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'WatchlistEvent.reorderStocks(watchlistName: $watchlistName, oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReorderStocksImpl &&
            (identical(other.watchlistName, watchlistName) ||
                other.watchlistName == watchlistName) &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, watchlistName, oldIndex, newIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReorderStocksImplCopyWith<_$ReorderStocksImpl> get copyWith =>
      __$$ReorderStocksImplCopyWithImpl<_$ReorderStocksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String watchlistName, int oldIndex, int newIndex)
        reorderStocks,
    required TResult Function(String watchlistName, List<Stock> stocks)
        saveWatchlist,
  }) {
    return reorderStocks(watchlistName, oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String watchlistName, int oldIndex, int newIndex)?
        reorderStocks,
    TResult? Function(String watchlistName, List<Stock> stocks)? saveWatchlist,
  }) {
    return reorderStocks?.call(watchlistName, oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String watchlistName, int oldIndex, int newIndex)?
        reorderStocks,
    TResult Function(String watchlistName, List<Stock> stocks)? saveWatchlist,
    required TResult orElse(),
  }) {
    if (reorderStocks != null) {
      return reorderStocks(watchlistName, oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReorderStocks value) reorderStocks,
    required TResult Function(_SaveWatchlist value) saveWatchlist,
  }) {
    return reorderStocks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReorderStocks value)? reorderStocks,
    TResult? Function(_SaveWatchlist value)? saveWatchlist,
  }) {
    return reorderStocks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReorderStocks value)? reorderStocks,
    TResult Function(_SaveWatchlist value)? saveWatchlist,
    required TResult orElse(),
  }) {
    if (reorderStocks != null) {
      return reorderStocks(this);
    }
    return orElse();
  }
}

abstract class _ReorderStocks implements WatchlistEvent {
  const factory _ReorderStocks(
      {required final String watchlistName,
      required final int oldIndex,
      required final int newIndex}) = _$ReorderStocksImpl;

  String get watchlistName;
  int get oldIndex;
  int get newIndex;
  @JsonKey(ignore: true)
  _$$ReorderStocksImplCopyWith<_$ReorderStocksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveWatchlistImplCopyWith<$Res> {
  factory _$$SaveWatchlistImplCopyWith(
          _$SaveWatchlistImpl value, $Res Function(_$SaveWatchlistImpl) then) =
      __$$SaveWatchlistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String watchlistName, List<Stock> stocks});
}

/// @nodoc
class __$$SaveWatchlistImplCopyWithImpl<$Res>
    extends _$WatchlistEventCopyWithImpl<$Res, _$SaveWatchlistImpl>
    implements _$$SaveWatchlistImplCopyWith<$Res> {
  __$$SaveWatchlistImplCopyWithImpl(
      _$SaveWatchlistImpl _value, $Res Function(_$SaveWatchlistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watchlistName = null,
    Object? stocks = null,
  }) {
    return _then(_$SaveWatchlistImpl(
      watchlistName: null == watchlistName
          ? _value.watchlistName
          : watchlistName // ignore: cast_nullable_to_non_nullable
              as String,
      stocks: null == stocks
          ? _value._stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

/// @nodoc

class _$SaveWatchlistImpl implements _SaveWatchlist {
  const _$SaveWatchlistImpl(
      {required this.watchlistName, required final List<Stock> stocks})
      : _stocks = stocks;

  @override
  final String watchlistName;
  final List<Stock> _stocks;
  @override
  List<Stock> get stocks {
    if (_stocks is EqualUnmodifiableListView) return _stocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stocks);
  }

  @override
  String toString() {
    return 'WatchlistEvent.saveWatchlist(watchlistName: $watchlistName, stocks: $stocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveWatchlistImpl &&
            (identical(other.watchlistName, watchlistName) ||
                other.watchlistName == watchlistName) &&
            const DeepCollectionEquality().equals(other._stocks, _stocks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, watchlistName, const DeepCollectionEquality().hash(_stocks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveWatchlistImplCopyWith<_$SaveWatchlistImpl> get copyWith =>
      __$$SaveWatchlistImplCopyWithImpl<_$SaveWatchlistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String watchlistName, int oldIndex, int newIndex)
        reorderStocks,
    required TResult Function(String watchlistName, List<Stock> stocks)
        saveWatchlist,
  }) {
    return saveWatchlist(watchlistName, stocks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String watchlistName, int oldIndex, int newIndex)?
        reorderStocks,
    TResult? Function(String watchlistName, List<Stock> stocks)? saveWatchlist,
  }) {
    return saveWatchlist?.call(watchlistName, stocks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String watchlistName, int oldIndex, int newIndex)?
        reorderStocks,
    TResult Function(String watchlistName, List<Stock> stocks)? saveWatchlist,
    required TResult orElse(),
  }) {
    if (saveWatchlist != null) {
      return saveWatchlist(watchlistName, stocks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReorderStocks value) reorderStocks,
    required TResult Function(_SaveWatchlist value) saveWatchlist,
  }) {
    return saveWatchlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReorderStocks value)? reorderStocks,
    TResult? Function(_SaveWatchlist value)? saveWatchlist,
  }) {
    return saveWatchlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReorderStocks value)? reorderStocks,
    TResult Function(_SaveWatchlist value)? saveWatchlist,
    required TResult orElse(),
  }) {
    if (saveWatchlist != null) {
      return saveWatchlist(this);
    }
    return orElse();
  }
}

abstract class _SaveWatchlist implements WatchlistEvent {
  const factory _SaveWatchlist(
      {required final String watchlistName,
      required final List<Stock> stocks}) = _$SaveWatchlistImpl;

  String get watchlistName;
  List<Stock> get stocks;
  @JsonKey(ignore: true)
  _$$SaveWatchlistImplCopyWith<_$SaveWatchlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WatchlistState {
  WatchlistStatus get status => throw _privateConstructorUsedError;
  Map<String, List<Stock>> get watchlists => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WatchlistStatus status,
            Map<String, List<Stock>> watchlists, String? error)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WatchlistStatus status,
            Map<String, List<Stock>> watchlists, String? error)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WatchlistStatus status,
            Map<String, List<Stock>> watchlists, String? error)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchlistState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchlistState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchlistState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WatchlistStateCopyWith<WatchlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistStateCopyWith<$Res> {
  factory $WatchlistStateCopyWith(
          WatchlistState value, $Res Function(WatchlistState) then) =
      _$WatchlistStateCopyWithImpl<$Res, WatchlistState>;
  @useResult
  $Res call(
      {WatchlistStatus status,
      Map<String, List<Stock>> watchlists,
      String? error});
}

/// @nodoc
class _$WatchlistStateCopyWithImpl<$Res, $Val extends WatchlistState>
    implements $WatchlistStateCopyWith<$Res> {
  _$WatchlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? watchlists = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WatchlistStatus,
      watchlists: null == watchlists
          ? _value.watchlists
          : watchlists // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Stock>>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WatchlistStateImplCopyWith<$Res>
    implements $WatchlistStateCopyWith<$Res> {
  factory _$$WatchlistStateImplCopyWith(_$WatchlistStateImpl value,
          $Res Function(_$WatchlistStateImpl) then) =
      __$$WatchlistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WatchlistStatus status,
      Map<String, List<Stock>> watchlists,
      String? error});
}

/// @nodoc
class __$$WatchlistStateImplCopyWithImpl<$Res>
    extends _$WatchlistStateCopyWithImpl<$Res, _$WatchlistStateImpl>
    implements _$$WatchlistStateImplCopyWith<$Res> {
  __$$WatchlistStateImplCopyWithImpl(
      _$WatchlistStateImpl _value, $Res Function(_$WatchlistStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? watchlists = null,
    Object? error = freezed,
  }) {
    return _then(_$WatchlistStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WatchlistStatus,
      watchlists: null == watchlists
          ? _value._watchlists
          : watchlists // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Stock>>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WatchlistStateImpl implements _WatchlistState {
  const _$WatchlistStateImpl(
      {this.status = WatchlistStatus.initial,
      final Map<String, List<Stock>> watchlists = const {},
      this.error})
      : _watchlists = watchlists;

  @override
  @JsonKey()
  final WatchlistStatus status;
  final Map<String, List<Stock>> _watchlists;
  @override
  @JsonKey()
  Map<String, List<Stock>> get watchlists {
    if (_watchlists is EqualUnmodifiableMapView) return _watchlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_watchlists);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'WatchlistState.initial(status: $status, watchlists: $watchlists, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchlistStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._watchlists, _watchlists) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_watchlists), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchlistStateImplCopyWith<_$WatchlistStateImpl> get copyWith =>
      __$$WatchlistStateImplCopyWithImpl<_$WatchlistStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WatchlistStatus status,
            Map<String, List<Stock>> watchlists, String? error)
        initial,
  }) {
    return initial(status, watchlists, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WatchlistStatus status,
            Map<String, List<Stock>> watchlists, String? error)?
        initial,
  }) {
    return initial?.call(status, watchlists, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WatchlistStatus status,
            Map<String, List<Stock>> watchlists, String? error)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, watchlists, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchlistState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchlistState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchlistState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WatchlistState implements WatchlistState {
  const factory _WatchlistState(
      {final WatchlistStatus status,
      final Map<String, List<Stock>> watchlists,
      final String? error}) = _$WatchlistStateImpl;

  @override
  WatchlistStatus get status;
  @override
  Map<String, List<Stock>> get watchlists;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$WatchlistStateImplCopyWith<_$WatchlistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
