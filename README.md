# snap_timer


QuickTimer App
QuickTimer is a simple Flutter app developed using the GetX state management library. It features a responsive and interactive user interface with various widgets, including a circular timer, random number display, and success/failure messaging. The app retains values even after closing and reopening, thanks to a repository pattern implementation.

Features
Widget 1: Displays seconds from the current time upon tapping.
Widget 2: Shows a random number between 0 - 59 upon tapping.
Widget 3: Displays success or failure messages with scores and attempts.
Widget 4: Circular timer resets automatically after 5 seconds.
Widget 5: Tappable button triggering actions on other widgets.


Usage
Splash Screen: A splash page appears for 3 seconds upon opening the app.
Widget 1 & Widget 2: Display information based on user interactions.
Widget 3: Reflects success or failure messages with scores and attempts.
Widget 4: Features a circular timer that resets automatically.
Widget 5: Tapping triggers actions on Widget 2 and Widget 1. It also resets Widget 4 and handles timeout failure.



Dependencies
GetX: ^4.3.8

Contributors
SPANDAN M N
email:-tyian3001@gmail.com


License
This project is licensed under the MIT License - see the LICENSE file for details.
