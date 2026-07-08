class HydrationService {
  static int calculateGoal({
    required double weight,
  }) {
    return (weight * 35).round();
  }
}