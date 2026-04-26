# Stox

Stox is a modern and efficient stock watchlist management application built with Flutter. It allows users to organize their favorite stocks, reorder them to suit their preferences, and ensures all data is persisted locally for a seamless experience.

> **Note**: For the purpose of the assignment and as demonstrated in the demo video, this application focuses on **2 primary screens**: the Watchlist Home Screen and the Reorder Watchlist Screen.

## Approach

The project follows a clean, reactive architecture designed for scalability and performance.

### 1. State Management with BLoC & Freezed
I chose the **BLoC (Business Logic Component)** pattern to ensure a strict separation between the UI and business logic.
- **Predictable State**: By using `freezed`, I ensure that the state is immutable. This prevents side effects and makes the app easier to debug.
- **Event-Driven**: All user interactions (starting the app, reordering a list, saving) are handled as discrete events, making the flow of data transparent.

### 2. Local Persistence with Hive
For data storage, I implemented **Hive**, a lightweight and blazing fast key-value database written in pure Dart.
- **Performance**: Unlike SQLite, Hive has no native dependencies and is significantly faster for simple CRUD operations like saving a list of stocks.
- **Data Integrity**: On app startup, the BLoC checks Hive for existing data. If none is found, it populates the app with sample data, ensuring a "warm" start for new users.

### 3. Efficient Reordering Logic
The reordering logic is handled locally within the BLoC state first.
- **Optimistic UI**: When a user drags an item, the `_ReorderStocks` event updates the local state instantly for a lag-free experience.
- **Explicit Persistence**: Changes are only written to the disk when the user triggers the "Save" action, optimizing disk I/O.

### 4. Modular & Reusable Components
I followed a modular structure by extracting common widgets into a `common/` directory. This ensures that elements like `StockTile` and `CustomButton` are consistent across the app and easy to maintain.

## Features

- **Watchlist Management**: View and manage multiple stock watchlists at a glance.
- **Interactive Reordering**: Easily change the priority of stocks within a list using intuitive drag-and-drop functionality.
- **Local Persistence**: All watchlist data is stored securely on your device using `Hive`, ensuring your preferences are saved across sessions.
- **Reactive UI**: The interface updates instantly in response to state changes, providing a smooth user experience.
- **Modern Design**: Built with a clean, minimalist aesthetic using Material Design components.

## Tech Stack

- **Framework**: [Flutter](https://flutter.dev/)
- **State Management**: [BLoC](https://pub.dev/packages/flutter_bloc) (Business Logic Component)
- **Code Generation**: [Freezed](https://pub.dev/packages/freezed) & [Json Serializable](https://pub.dev/packages/json_serializable) for immutable states and models.
- **Local Database**: [Hive](https://pub.dev/packages/hive) for fast, lightweight key-value storage.
- **Icons**: [Cupertino Icons](https://pub.dev/packages/cupertino_icons)

## Getting Started

### Prerequisites

- Flutter SDK (latest stable version recommended)
- Android Studio / VS Code
- Android SDK / iOS SDK

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/lokeshSharma1128/stox.git
   cd stox
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Generate Code**:
   Run the build runner to generate necessary files for Freezed and Hive:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the application**:
   ```bash
   flutter run
   ```

## Project Structure

- `lib/app/bloc`: Contains the Business Logic components (Events, States, and BLoCs).
- `lib/app/model`: Data models representing the application's domain (e.g., Stock model).
- `lib/app/screens`: The UI implementation, focusing on the Home and Edit screens.
- `lib/app/sample_data.dart`: Initial data used to populate the app on first run.
- `lib/common`: Reusable UI components and shared widgets like buttons and tiles.
- `lib/main.dart`: The main entry point where the app is initialized and Hive is configured.

## License

Distributed under the MIT License. See `LICENSE` for more information.
