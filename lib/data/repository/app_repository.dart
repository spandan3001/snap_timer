// Import necessary packages
import 'package:shared_preferences/shared_preferences.dart';

// Define the repository class for data storage
class AppRepository {
  // Define keys for shared preferences
  static const String successScoreKey = 'successScore';
  static const String failureScoreKey = 'failureScore';
  static const String totalAttemptsKey = 'totalAttempts';

  // Method to retrieve the success score from shared preferences
  Future<int> getSuccessScore() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(successScoreKey) ?? 0;
  }

  // Method to retrieve the failure score from shared preferences
  Future<int> getFailureScore() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(failureScoreKey) ?? 0;
  }

  // Method to retrieve the total attempts from shared preferences
  Future<int> getTotalAttempts() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(totalAttemptsKey) ?? 0;
  }

  // Method to save success score, failure score, and total attempts to shared preferences
  Future<void> saveData(
      int successScore, int failureScore, int totalAttempts) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(successScoreKey, successScore);
    prefs.setInt(failureScoreKey, failureScore);
    prefs.setInt(totalAttemptsKey, totalAttempts);
  }
}
