import 'package:flutter/material.dart';

class StockItem extends StatelessWidget {
  final String symbol;
  final double price;
  final double changePercent;
  final VoidCallback? onLongPress;
  final Widget? trailing;

  const StockItem({
    super.key,
    required this.symbol,
    required this.price,
    required this.changePercent,
    this.onLongPress,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final isPositive = changePercent >= 0;

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      title: Text(
        symbol,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: const Text("NSE | EQ"),
      trailing: trailing ??
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price.toStringAsFixed(2),
                style: TextStyle(
                  color: isPositive ? Colors.green : Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "${changePercent.toStringAsFixed(2)}%",
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
      onLongPress: onLongPress,
    );
  }
}