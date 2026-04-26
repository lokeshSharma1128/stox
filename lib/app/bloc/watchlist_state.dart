part of 'watchlist_bloc.dart';

@freezed
class WatchlistState with _$WatchlistState {
  const factory WatchlistState.initial({
    @Default(WatchlistStatus.initial) WatchlistStatus status,
    @Default({}) Map<String, List<Stock>> watchlists,
    String? error,
  }) = _WatchlistState;
}

enum WatchlistStatus { initial, loading, success, error }
