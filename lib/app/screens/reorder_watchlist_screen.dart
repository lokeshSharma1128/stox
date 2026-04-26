import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/custom_button.dart';
import '../../common/stock_tile.dart';
import '../bloc/watchlist_bloc.dart';
import '../model/stock_model.dart';

class ReorderWatchlistScreen extends StatefulWidget {
  final String watchlistName;

  const ReorderWatchlistScreen({super.key, required this.watchlistName});

  @override
  State<ReorderWatchlistScreen> createState() => _ReorderWatchlistScreenState();
}

class _ReorderWatchlistScreenState extends State<ReorderWatchlistScreen> {
  List<Stock> localStocks = [];

  @override
  void initState() {
    super.initState();

    final state = context.read<WatchlistBloc>().state;

    if (state.status == WatchlistStatus.success) {
      localStocks = List.from(state.watchlists[widget.watchlistName] ?? []);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit ${widget.watchlistName}")),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomButton(
              text: "Edit Other Watchlist",
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderColor: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              text: "Save Watchlist",
              onPressed: () {
                context.read<WatchlistBloc>().add(
                  WatchlistEvent.saveWatchlist(
                    watchlistName: widget.watchlistName,
                    stocks: localStocks,
                  ),
                );

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(child: Text(widget.watchlistName)),
                const Icon(Icons.edit),
              ],
            ),
          ),

          Expanded(
            child: BlocBuilder<WatchlistBloc, WatchlistState>(
              builder: (context, state) {
                if (state.status == WatchlistStatus.loading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (localStocks.isEmpty) {
                  return const Center(child: Text("No stocks"));
                }

                return ReorderableListView.builder(
                  buildDefaultDragHandles: false,

                  proxyDecorator: (child, index, animation) {
                    return Material(
                      elevation: 6,
                      color: Colors.white,
                      child: child,
                    );
                  },

                  itemCount: localStocks.length,

                  onReorder: (oldIndex, newIndex) {
                    setState(() {
                      if (oldIndex < newIndex) newIndex--;

                      final item = localStocks.removeAt(oldIndex);
                      localStocks.insert(newIndex, item);
                    });
                  },

                  itemBuilder: (context, index) {
                    final stock = localStocks[index];

                    return Material(
                      key: ValueKey(stock.id),
                      child: StockTile(
                        stock: stock,
                        index: index,
                        onDelete: () {
                          setState(() {
                            localStocks.removeAt(index);
                          });
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
