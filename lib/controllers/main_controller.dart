// Import necessary packages
import 'package:get/get.dart';
import 'package:snap_timer/controllers/widget_1_controller.dart';
import 'package:snap_timer/controllers/widget_2_controller.dart';
import 'package:snap_timer/controllers/widget_3_controller.dart';
import 'package:snap_timer/controllers/widget_4_controller.dart';
import 'package:snap_timer/controllers/widget_5_controller.dart';
import '../data/repository/app_repository.dart';

// Define the main logic controller
class MainLogicController extends GetxController {
  // Declare controllers for each widget
  late final Widget1Controller widget1Controller;
  late final Widget2Controller widget2Controller;
  late final Widget3Controller widget3Controller;
  late final Widget4Controller widget4Controller;
  late final Widget5Controller widget5Controller;

  // Instantiate the app repository
  final AppRepository repository = AppRepository();

  // Declare observable variables for success score, failure score, and total attempts
  RxInt successScore = 0.obs;
  RxInt failureScore = 0.obs;
  RxInt totalAttempts = 0.obs;

  @override
  Future<void> onInit() async {
    // Initialize controllers for each widget
    widget1Controller = Get.put(Widget1Controller());
    widget2Controller = Get.put(Widget2Controller());
    widget3Controller = Get.put(Widget3Controller());
    widget4Controller = Get.put(Widget4Controller());
    widget5Controller = Get.put(Widget5Controller());

    // Call the superclass's onInit method
    super.onInit();

    // Perform additional initialization
    await init();
  }

  // Asynchronous method for additional initialization
  Future<void> init() async {
    // Retrieve saved data from the repository and set it to the observable variables
    successScore.value = await repository.getSuccessScore();
    failureScore.value = await repository.getFailureScore();
    totalAttempts.value = await repository.getTotalAttempts();
  }

  // Method to save data to the repository
  void saveData() async {
    await repository.saveData(
        successScore.value, failureScore.value, totalAttempts.value);
  }

  // Method to increment success score and update total attempts
  void incrementSuccessScore() {
    successScore++;
    totalAttempts++;
    saveData();
  }

  // Method to increment failure score and update total attempts
  void incrementFailureScore() {
    failureScore++;
    totalAttempts++;
    saveData();
  }
}
