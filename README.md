# ChatBuddy Flutter App

ChatBuddy is a Flutter application designed to facilitate real-time communication and interaction among users. This README provides instructions for setting up the ChatBuddy Flutter app on your local development environment.

## Prerequisites
Before setting up the ChatBuddy app, ensure you have the following prerequisites installed on your system:
- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Firebase Account: [Create a Firebase project](https://console.firebase.google.com/)
- Firebase CLI (optional): [Install Firebase CLI](https://firebase.google.com/docs/cli)

## Setup Instructions
Follow these steps to set up the ChatBuddy Flutter app:

### 1. Fork and Clone the Repository
```bash
git clone https://github.com/your-username/ChatBuddy.git
```

### 2. Navigate to the Project Directory
```bash
cd ChatBuddy
```

### 3. Set Up Firebase Project
- Create a new Firebase project or use an existing one in the Firebase console.
- Enable Firebase Authentication and Firebase Firestore services for the project.
- Download the `google-services.json` file and place it in the `android/app` directory for Android or the `ios/Runner` directory for iOS.

### 4. Install Dependencies
```bash
flutter pub get
```

### 5. Run the App
```bash
flutter run
```

## Contributing

Contributions to the Translate App project are welcome! Feel free to open issues for bug fixes, feature requests, or any other improvements you'd like to suggest. Additionally, pull requests are highly appreciated.

Before contributing, please review the [Contribution Guidelines](CONTRIBUTING.md) to ensure a smooth collaboration process.
