// Import necessary packages and files
import 'dart:ui';
import 'package:get/get.dart';
import '../constants/colors.dart'; // For color constants
import 'main_controller.dart';

// Define a GetX controller for Widget 3
class Widget3Controller extends GetxController {
  // Access the MainLogicController using GetX
  MainLogicController mainLogicController = Get.find();

  // Observable variable to track success or failure
  RxBool success = true.obs;

  // Method to compare numbers and determine success or failure
  bool compareNumbers() {
    // Compare the random number and seconds, update success variable
    success.value = mainLogicController.widget2Controller.randomNumber.value ==
        mainLogicController.widget1Controller.seconds.value;
    return success.value;
  }

  // Method to get the title based on success or failure
  String getTitle() {
    return success.value ? "Success :)" : "Sorry Try Again!";
  }

  // Method to get the description based on success or failure
  String getDescription() {
    return success.value
        ? "Score : ${mainLogicController.successScore.value}/${mainLogicController.totalAttempts.value}"
        : "Attempts : ${mainLogicController.totalAttempts.value}";
  }

  // Method to get the background color based on success or failure
  Color getColor() => success.value ? kGreen : kYellow;

  // Method to get the border color based on success or failure
  Color getBorderColor() => success.value ? kGreenBorder : kYellowBorder;
}
