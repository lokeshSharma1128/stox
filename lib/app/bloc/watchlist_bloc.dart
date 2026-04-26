import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../model/stock_model.dart';
import '../sample_data.dart';

part 'watchlist_event.dart';
part 'watchlist_state.dart';
part 'watchlist_bloc.freezed.dart';

class WatchlistBloc extends Bloc<WatchlistEvent, WatchlistState> {
  WatchlistBloc() : super(const WatchlistState.initial()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(status: WatchlistStatus.loading));

      final box = await Hive.openBox('watchlists');

      final data = box.get('all_watchlists');

      Map<String, List<Stock>> loadedData = {};

      if (data != null) {
        loadedData = (data as Map).map<String, List<Stock>>((key, value) {
          final stocks = (value as List).map((item) {
            if (item is Stock) return item;

            return Stock(
              id: item['id'],
              name: item['name'],
              symbol: item['symbol'],
              price: item['price'],
              changePercent: item['changePercent'],
            );
          }).toList();

          return MapEntry(key as String, stocks);
        });
      } else {
        loadedData = Map.from(sampleWatchlists);
        await box.put('all_watchlists', loadedData);
      }

      emit(
        state.copyWith(status: WatchlistStatus.success, watchlists: loadedData),
      );
    });

    on<_ReorderStocks>((event, emit) {
      final updated = Map<String, List<Stock>>.from(state.watchlists);

      final list = List<Stock>.from(updated[event.watchlistName]!);

      int newIndex = event.newIndex;
      if (event.oldIndex < newIndex) newIndex--;

      final item = list.removeAt(event.oldIndex);
      list.insert(newIndex, item);

      updated[event.watchlistName] = list;

      emit(state.copyWith(watchlists: updated));
    });

    on<_SaveWatchlist>((event, emit) async {
      final updated = Map<String, List<Stock>>.from(state.watchlists);

      updated[event.watchlistName] = event.stocks;

      final box = await Hive.openBox('watchlists');

      final dataToSave = updated.map((key, value) {
        return MapEntry(
          key,
          value
              .map(
                (stock) => {
                  'id': stock.id,
                  'name': stock.name,
                  'symbol': stock.symbol,
                  'price': stock.price,
                  'changePercent': stock.changePercent,
                },
              )
              .toList(),
        );
      });

      await box.put('all_watchlists', dataToSave);

      emit(
        state.copyWith(status: WatchlistStatus.success, watchlists: updated),
      );
    });
  }
}
