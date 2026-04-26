import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'app/bloc/watchlist_bloc.dart';
import 'app/model/stock_model.dart';
import 'app/screens/watchlist_main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(StockAdapter());

  await Hive.openBox('watchlists');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => WatchlistBloc()..add(const WatchlistEvent.started()),
        child: const WatchlistHomeScreen(),
      ),
    );
  }
}
