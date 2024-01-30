# Flutter GetX App

A Flutter application using the GetX state management library for managing the state.

## Features

- **Widget 1**: Displays seconds from the current time.
- **Widget 2**: Displays a random number between 0 - 59.
- **Widget 3**: Shows success or failure message with score and attempts.
- **Widget 4**: Circular timer that resets automatically after 5 seconds.
- **Widget 5**: Tappable button to trigger actions.

### Splash Screen

The app displays a splash screen for 3 seconds upon opening.

## Usage

1. **Widget 1 and Widget 2**: On each tapping of Widget 5:
    - Widget 2 displays a random number between 0 - 59.
    - Widget 1 displays seconds from the tapped time.

2. **Widget 3**: If the random number displayed on Widget 2 equals the seconds shown by Widget 1, Widget 3 displays a success message with the success score out of the total number of attempts. If not, it displays a failure message with the failure score out of the total number of attempts.

3. **Widget 4 Counter**: On each tapping of Widget 5:
    - Widget 4 counter resets to 5 and starts counting down from 5 to 0 (seconds).
    - If the user does not tap Widget 5 until Widget 4 counts down to 0, a new failure attempt is considered automatically. Widget 3 displays a failure message with a penalty, and the failure score is updated.

## Persistence

All values, including seconds, random number, success score, failure score, total attempts, and counter, are retained upon closing and reopening the app using the `shared_preferences` package.

## Additional Data Points

The app supports the storage and retrieval of additional data points:
- **Data Point 1**: A string value.
- **Data Point 2**: An integer value.

These data points are saved and retrieved locally using `shared_preferences`.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/your-repo.git
   ```
2. Navigate to the project directory:
    ```bash
   cd your-repo
   ```
3. Install dependencies:
    ```bash
    flutter pub get
    ```
4. Run the app:
    ```bash
   flutter run
   ```
   
## Dependencies

- * flutter: Flutter Framework
- * get: GetX State Management
- * shared_preferences: Shared Preferences



## Contributors

- [Contributor1](https://github.com/spandan3001)

## License

MIT License

Copyright (c) [2024] [SPANDAN M N]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.




