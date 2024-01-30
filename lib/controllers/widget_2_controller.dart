// Import necessary packages
import 'package:get/get.dart';
import 'dart:math';

// Define a GetX controller for Widget 2
class Widget2Controller extends GetxController {
  // Declare an observable RxInt variable to hold the random number
  RxInt randomNumber = 0.obs;

  // Method to generate a random number between 0 and 59
  void generateRandomNumber() {
    // Use the Random class to generate a random number
    randomNumber.value = Random().nextInt(59);

    //test comment for success
    // randomNumber.value = DateTime.now().second;
  }
}
