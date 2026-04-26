import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../common/items.dart';
import '../bloc/watchlist_bloc.dart';
import 'watchlist_screen.dart';

class WatchlistHomeScreen extends StatelessWidget {
  const WatchlistHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatchlistBloc, WatchlistState>(
      buildWhen: (prev, curr) => prev.watchlists != curr.watchlists,
      builder: (context, state) {
        if (state.status == WatchlistStatus.loading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (state.watchlists.isEmpty) {
          return const Scaffold(
            body: Center(child: Text("No Watchlists Available")),
          );
        }

        final watchlistNames = state.watchlists.keys.toList();

        return DefaultTabController(
          length: watchlistNames.length,
          child: Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "SENSEX\n+1.3%",
                          style: TextStyle(color: Colors.green),
                        ),
                        Text(
                          "NIFTY BANK\n-0.5%",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),

                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: watchlistNames
                        .map((name) => Tab(text: name))
                        .toList(),
                  ),

                  Expanded(
                    child: TabBarView(
                      children: watchlistNames.map((watchlistName) {
                        final stocks = state.watchlists[watchlistName]!;

                        return ListView.builder(
                          itemCount: stocks.length,
                          itemBuilder: (context, index) {
                            final stock = stocks[index];
                            return  StockItem(
                              symbol: stock.symbol,
                              price: stock.price,
                              changePercent: stock.changePercent,
                              onLongPress: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => BlocProvider.value(
                                      value: context.read<WatchlistBloc>(),
                                      child: EditWatchlistScreen(
                                        watchlistName: watchlistName,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
