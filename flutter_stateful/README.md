# Flutter Practice

A Flutter project for keeping several small exercises in one app. Each exercise has its own entry point, screens, and reusable widgets, while the project shares its platform folders, dependencies, and tests.

## Project structure

```text
flutter_practice/
├── android/                 # Android platform project
├── ios/                     # iOS platform project
├── web/                     # Web platform project
├── test/                    # Automated tests
├── lib/
│   ├── exercise_01/
│   │   ├── main.dart        # Entry point for exercise 01
│   │   ├── screens/         # Exercise 01 screens
│   │   └── widgets/         # Exercise 01 reusable widgets
│   ├── exercise_02/
│   │   ├── main.dart
│   │   ├── screens/
│   │   └── widgets/
│   ├── exercise_03/
│   │   ├── main.dart
│   │   ├── screens/
│   │   └── widgets/
│   └── main.dart            # Main app entry point
├── pubspec.yaml             # Project metadata and dependencies
└── README.md                # Project documentation
```

## Organization

- Put exercise-specific code under its matching `lib/exercise_NN/` directory.
- Use `screens/` for full pages and `widgets/` for reusable UI pieces within that exercise.
- Keep shared app setup and navigation in `lib/main.dart`. It can select which exercise to show.
- Keep tests under `test/`; platform-specific configuration belongs in the corresponding platform folder.

## Running the app

From the project root, run the main app with:

```sh
flutter run
```

To run an exercise directly, pass its entry point:

```sh
flutter run -t lib/exercise_01/main.dart
```

Replace `exercise_01` with `exercise_02` or `exercise_03` to launch another exercise.
