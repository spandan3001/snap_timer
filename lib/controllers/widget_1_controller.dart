// Import necessary package
import 'package:get/get.dart';

// Define a GetX controller for Widget 1
class Widget1Controller extends GetxController {
  // Declare an observable RxInt variable to hold the seconds
  RxInt seconds = 0.obs;

  // Method to update the seconds based on the current second of the system clock
  void updateSeconds() {
    // Retrieve the current second using DateTime.now().second
    seconds.value = DateTime.now().second;
  }
}
