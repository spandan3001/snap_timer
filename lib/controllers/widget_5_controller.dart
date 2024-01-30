// Import necessary package and file
import 'package:get/get.dart';
import 'main_controller.dart';

// Define a GetX controller for Widget 5
class Widget5Controller extends GetxController {
  // Access the MainLogicController using GetX
  MainLogicController mainLogicController = Get.find();

  // Method to handle the tap event for Widget 5
  void widget5ButtonTap() {
    // Check if the timer is not started
    if (mainLogicController.widget4Controller.started.value == false) {
      // Reset and start the timer
      mainLogicController.widget4Controller.resetTimer();
      mainLogicController.widget4Controller.startTimer();
    } else {
      // Timer is already started, handle the logic for the tap event
      mainLogicController.widget4Controller.answered = true;

      // Generate a random number for Widget 2
      mainLogicController.widget2Controller.generateRandomNumber();

      // Update seconds for Widget 1
      mainLogicController.widget1Controller.updateSeconds();

      // Compare numbers and update success/failure scores in Widget 3
      if (mainLogicController.widget3Controller.compareNumbers()) {
        mainLogicController.incrementSuccessScore();
      } else {
        mainLogicController.incrementFailureScore();
      }
    }
  }
}
