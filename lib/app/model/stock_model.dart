import 'package:hive/hive.dart';

part 'stock_model.g.dart';

@HiveType(typeId: 0)
class Stock {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String symbol;

  @HiveField(3)
  final double price;

  @HiveField(4)
  final double changePercent;

  Stock({
    required this.id,
    required this.name,
    required this.symbol,
    required this.price,
    required this.changePercent,
  });
}