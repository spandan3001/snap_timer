// Import necessary packages and files
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../constants/colors.dart'; // For color constants
import '../controllers/main_controller.dart';
import '../utils/compnents/result_display_card.dart'; // For DisplayCard widget

// Define the main page widget
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// Define the state for the main page widget
class _HomeScreenState extends State<HomeScreen> {
  final MainLogicController mainLogicController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX App'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: kBlue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Obx(
                  () => DisplayCard(
                    mainColor: kLightViolet,
                    borderColor: kVioletBorder,
                    title: "Current Second",
                    text: "${mainLogicController.widget1Controller.seconds}",
                    borderRadius: 15,
                    titleIndent: true,
                    textColor: Colors.black,
                  ),
                ),
              ),
              Expanded(
                child: Obx(
                  () => DisplayCard(
                    mainColor: kLightGreyBlue,
                    borderColor: kGreyBlueBorder,
                    title: "Random Number",
                    text:
                        "${mainLogicController.widget2Controller.randomNumber}",
                    borderRadius: 15,
                    titleIndent: true,
                    textColor: Colors.black,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 50),
          Obx(
            () => DisplayCard(
              mainColor: mainLogicController.widget3Controller.getColor(),
              borderColor:
                  mainLogicController.widget3Controller.getBorderColor(),
              title: mainLogicController.widget3Controller.getTitle(),
              text: mainLogicController.widget3Controller.getDescription(),
              borderRadius: 5,
              alignment: CrossAxisAlignment.start,
            ),
          ).marginSymmetric(horizontal: 30),
          const SizedBox(height: 20),
          Obx(
            () => Stack(
              alignment: AlignmentDirectional.center,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CircularProgressIndicator(
                    value:
                        mainLogicController.widget4Controller.timerValue.value /
                            5.0,
                    color: kIndicatorGreen,
                    backgroundColor: kGrey,
                    strokeWidth: 7,
                  ),
                ),
                Center(
                    child: Text(
                        "0:0${mainLogicController.widget4Controller.timerValue.value}"))
              ],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              mainLogicController.widget5Controller.widget5ButtonTap();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: kBlue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: const Text('Click'),
          ),
        ],
      ),
    );
  }
}
