// Import necessary packages and file
import 'dart:async';
import 'package:get/get.dart';
import 'main_controller.dart';

// Define a GetX controller for Widget 4
class Widget4Controller extends GetxController {
  // Access the MainLogicController using GetX
  MainLogicController mainLogicController = Get.find();

  // Observable variables for timer value, timer status, and answer status
  RxInt timerValue = 5.obs;
  RxBool started = false.obs;
  bool answered = false;

  // Timer object for countdown
  late Timer _timer;

  // Method to start the timer
  void startTimer() {
    started.value = true;

    // Set up a periodic timer that updates every second
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      // Check if the timer value is greater than 0
      if (timerValue.value > 0) {
        timerValue.value--; // Decrement the timer value
      } else {
        // Timer has reached 0, cancel the timer and show timeout failure message
        _timer.cancel();
        if (!answered) {
          showTimeoutFailureMessage();
        }
        resetTimer(); // Reset the timer
      }
    });
  }

  // Method to show a timeout failure message
  void showTimeoutFailureMessage() {
    mainLogicController.incrementFailureScore();
    Get.snackbar(
      'TimeOut',
      'Sorry! Timeout and one attempt is considered for failure as a penalty',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  // Method to reset the timer
  void resetTimer() {
    started.value = false;
    answered = false;
    timerValue.value = 5; // Reset the timer value to the initial value
  }

  // Override the onClose method to cancel the timer when the controller is closed
  @override
  void onClose() {
    _timer.cancel(); // Cancel the timer to prevent memory leaks
    super.onClose();
  }
}
