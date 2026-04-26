import 'model/stock_model.dart';

List<Stock> sampleStocks = [
  Stock(id: '1', name: 'Reliance', symbol: 'REAN', price: 190.2, changePercent: 1.2),
  Stock(id: '2', name: 'Swiggy', symbol: 'SWG', price: 250.4, changePercent: -0.8),
  Stock(id: '3', name: 'Zomato', symbol: 'ZMT', price: 130.5, changePercent: 2.1),
  Stock(id: '4', name: 'Samsung', symbol: 'SNG', price: 2800.0, changePercent: -1.5),
  Stock(id: '5', name: 'Tata', symbol: 'TATA', price: 150.2, changePercent: 1.5),
  Stock(id: '6', name: 'Adani', symbol: 'ADANI', price: 200.4, changePercent: 1.8),
  Stock(id: '7', name: 'Sbi', symbol: 'SBI', price: 160.5, changePercent: -2.1),
  Stock(id: '8', name: 'Hdfc', symbol: 'HDFC', price: 2500.0, changePercent: 1.5),
];

Map<String, List<Stock>> sampleWatchlists = {
  "Watchlist 1": List.from(sampleStocks),
  "Watchlist 2": List.from(sampleStocks.reversed),
  "Watchlist 3": List.from(sampleStocks),
};