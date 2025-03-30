# weather-demo

A simple weather application that display the current temperature and the next 4 days.

The app is separated into two layers: UI layer and Data layer. Each layer is split into different components:

- Views: Handle UI presentaion.
- View models: Handle fetching data from Data layer, notifying the Views and other logic.
- Repositories: Handle polling data from services and transforming data if needed.
- Services: For accessing data from various sources (REST APIs, databases, device-specific APIs,..).

Technologies:

- [ChangeNotifiers/ Listenable](https://api.flutter.dev/flutter/foundation/ChangeNotifier-class.html) for State management (A nice choice if you need a small or simple application, it's easy to understand and use little code).
- [provider](https://pub.dev/packages/provider) for dependency injection.
- [freezed ](https://pub.dev/packages/freezed) for generating models.
- [geolocator ](https://pub.dev/packages/geolocator) for getting device location.
- [mocktail](https://pub.dev/packages/mocktail) for creating mocks for testing.

## Setup

1. Install packages

   ```bash
   $ flutter pub get
   ```

2. Generate files

   ```bash
   $ dart run build_runner build
   ```

3. Generate localization files

   ```bash
   $ flutter gen-l10n
   ```

4. Run the app
