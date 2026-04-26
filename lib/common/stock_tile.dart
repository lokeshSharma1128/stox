import 'package:flutter/material.dart';

import '../app/model/stock_model.dart';

class StockTile extends StatelessWidget {
  final Stock stock;
  final int index;
  final VoidCallback onDelete;

  const StockTile({
    super.key,
    required this.stock,
    required this.index,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: Row(
        children: [
          ReorderableDragStartListener(
            index: index,
            child: const Icon(Icons.menu, color: Colors.grey),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Text(
              stock.symbol,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),

          IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}