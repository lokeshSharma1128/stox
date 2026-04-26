# Stox

A modern Flutter application for managing and reordering stock watchlists with local persistence.

## Approach

The project follows modern Flutter development practices focusing on state management, persistence, and clean architecture principles.

### State Management
- **BLoC (Business Logic Component)**: Used `flutter_bloc` to separate business logic from the UI. This ensures that the application's state is predictable and easy to test.
- **Freezed**: Utilized for generating immutable state and event classes, which reduces boilerplate and prevents accidental state mutations.

### Persistence
- **Hive**: A lightweight and fast key-value database used for local storage. It handles the persistence of user-defined watchlists, ensuring data is retained across app restarts.

### UI/UX
- **Reorderable Lists**: Implemented reordering logic within the BLoC to provide a seamless user experience when organizing stocks.
- **Modular Components**: Common UI elements like `StockTile` and `CustomButton` are extracted into a `common` directory for reusability.

## Project Structure

```text
lib/
├── app/
│   ├── bloc/          # Watchlist BLoC, events, and states
│   ├── model/         # Data models (e.g., Stock)
│   ├── screens/       # UI screens
│   └── sample_data.dart # Initial data for the app
├── common/            # Reusable widgets and components
└── main.dart          # Entry point and app initialization
```

## Key Features

- **Multiple Watchlists**: Support for managing different sets of stocks.
- **Drag-and-Drop Reordering**: Easily change the order of stocks within a list.
- **Local Persistence**: All changes are saved locally using Hive.
- **Reactive UI**: The UI automatically updates in response to state changes from the BLoC.

## Getting Started

1.  **Install Dependencies**:
    ```bash
    flutter pub get
    ```
2.  **Generate Code**:
    Run build_runner to generate `freezed` and `json_serializable` files:
    ```bash
    flutter pub run build_runner build --delete-conflicting-outputs
    ```
3.  **Run the App**:
    ```bash
    flutter run
    ```
