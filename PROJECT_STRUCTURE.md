# Flutter Project Folder Structure

## Introduction

A Flutter project follows a well-organized folder structure that separates application logic, platform-specific code, assets, and configuration files. Understanding this structure helps in maintaining scalability, readability, and efficient collaboration within a team.

---

## Main Folders and Their Roles

### 1. lib/
The most important folder in a Flutter app.

- Contains all Dart source code.
- Includes UI screens, widgets, services, and models.
- Entry point: `main.dart`

Example structure:

lib/
┣ main.dart
┣ screens/
┣ widgets/
┣ services/
┗ models/

---

### 2. android/
Contains Android-specific configuration and build files.

Important files:
- `android/app/build.gradle` → Defines version, dependencies, app name.
- `AndroidManifest.xml` → App permissions and metadata.

---

### 3. ios/
Contains iOS-specific configuration files.

Important file:
- `ios/Runner/Info.plist` → App permissions and metadata for iOS.

---

### 4. assets/
Developer-created folder for static resources.

Used to store:
- Images
- Fonts
- JSON files
- Audio files

Assets must be declared in `pubspec.yaml`.

Example:

flutter:
  assets:
    - assets/images/

---

### 5. test/
Contains automated test files.

- Default file: `widget_test.dart`
- Used for unit testing and UI testing.

---

### 6. pubspec.yaml
The main configuration file of a Flutter project.

Used to:
- Add dependencies
- Register assets
- Define fonts
- Set environment settings

Example:

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.6

---

## Supporting Files

- `.gitignore` → Files ignored by Git (build files, IDE configs)
- `README.md` → Project documentation
- `build/` → Compiled app files (auto-generated)
- `.dart_tool/` → Dart configuration files
- `.idea/` → IDE settings

---

## Folder Hierarchy Diagram

my_flutter_app/
┣ android/
┣ ios/
┣ lib/
┃ ┗ main.dart
┣ test/
┣ assets/
┣ pubspec.yaml
┣ README.md
┗ .gitignore

---

## Reflection

Understanding Flutter’s folder structure is essential for writing scalable and maintainable code. It helps developers separate UI, business logic, and platform-specific configurations clearly.

A clean structure improves teamwork because:
- Developers can work on different modules independently.
- Code becomes easier to debug and maintain.
- Large projects remain organized and scalable.

Proper folder organization ensures the application remains manageable as new features are added.
