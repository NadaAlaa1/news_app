# News App

A Flutter-based news application that fetches and displays the latest headlines from various categories using the [NewsAPI](https://newsapi.org/). Users can browse articles by category, view article summaries, and open full articles in an integrated WebView for a seamless reading experience.

## Table of Contents

- [Features](#features)
- [Setup](#setup)
- [Configuration](#configuration)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [License](#license)

## Features

- **Category Selection**: Users can select from various categories such as Sports, Technology, Science, Business, Health, Entertainment, and General.
- **Top Headlines**: Fetches and displays top headlines from NewsAPI for selected categories.
- **Article Details**: View a brief summary of each article including title, image, and description.
- **In-App WebView**: Opens full article within the app using WebView, maintaining a seamless reading experience.
- **Responsive Design**: Optimized for both iOS and Android devices.

## Setup

1. **Clone the repository**

   ```bash
   git clone https://github.com/your-username/news-app.git
   cd news-app
   
2. **Install dependencies**
   
   Make sure you have Flutter installed. Then, run the following command to install the required packages:
   ```bash
   flutter pub get

4. **Obtain NewsAPI Key**

   - Go to [NewsAPI](https://newsapi.org/) and sign up to obtain a free API key.
   - Copy the API key.
     
5. **Add the API Key**

   Replace `YOUR_API_KEY_HERE` in `NewsService` with your actual NewsAPI key.
   ```dart
   
   var response = await dio.get(
  'https://newsapi.org/v2/top-headlines?apikey=YOUR_API_KEY_HERE&country=us&category=$category'
   );

6. **Platform-Specific Configuration**

   - **Android**: Add internet permission in `android/app/src/main/AndroidManifest.xml`:
     ```xml
     <uses-permission android:name="android.permission.INTERNET"/>

   - **iOS**: Add the following entry to `ios/Runner/Info.plist` to enable WebView loading:
     ```xml
     <key>NSAppTransportSecurity</key>
     <dict>
        <key>NSAllowsArbitraryLoads</key>
        <true/>
     </dict>

7. **Run the App**
   Start the application on a connected device or emulator:

   ```bash
   flutter run

    
