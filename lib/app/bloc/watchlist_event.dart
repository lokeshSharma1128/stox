part of 'watchlist_bloc.dart';

@freezed
class WatchlistEvent with _$WatchlistEvent {
  const factory WatchlistEvent.started() = _Started;

  const factory WatchlistEvent.reorderStocks({
    required String watchlistName,
    required int oldIndex,
    required int newIndex,
  }) = _ReorderStocks;
  const factory WatchlistEvent.saveWatchlist({
    required String watchlistName,
    required List<Stock> stocks,
  }) = _SaveWatchlist;
}