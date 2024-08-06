
# Flutter Movie App with GetX + MVC

A Flutter movie application utilizing GetX for state management and MVC (Model-View-Controller) architecture.

## Features
- Discover Movies and TV Shows
- Search Movies and TV Shows
- Movie Details

## Getting Started

### Prerequisites
- [Flutter](https://flutter.dev/docs/get-started/install) (version 2.0 or later)
- A TMDb API Key. You can get one by creating an account on [TMDb](https://www.themoviedb.org/).

### Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/flutter_movie_app.git
   cd flutter_movie_app
   ```

2. Install the dependencies:
   ```sh
   flutter pub get
   ``` 
### Running the App
```sh
flutter run
```

## Architecture

### MVC (Model-View-Controller)
- **Model:** Represents the data and business logic of the application.
- **View:** Represents the UI of the application.
- **Controller:** Acts as a mediator between the Model and the View, handling user input and updating the Model and View accordingly.

### State Management with GetX
- GetX is used for efficient state management, making it easy to manage the state of the application and navigate between screens.

## Project Structure
```
lib/
|-- controllers/
|   |-- movie_controller.dart
|-- models/
|   |-- movie.dart
|-- views/
|   |-- movie_list.dart
|   |-- movie_detail.dart
|-- services/
|   |-- api_service.dart
|-- utils/
|   |-- constants.dart
|-- main.dart
```

## API Integration
- The app integrates with TMDb API to fetch movie data.
- Ensure you have your TMDb API Key stored in the `.env` file.

## Error Handling
- The app includes error handling to display user-friendly messages in case of API request failures or no search results.

## Localization
- The app supports multiple languages and can be easily localized.

## Theme
- The app includes both light and dark themes, which can be toggled from the settings.

## Additional Resources
- [GetX Documentation](https://pub.dev/packages/get)
- [Flutter Documentation](https://flutter.dev/docs)

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
