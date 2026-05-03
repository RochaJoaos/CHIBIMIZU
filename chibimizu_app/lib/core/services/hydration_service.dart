class HydrationService {
  int dailyGoal = 2000;
  int currentWater = 0;
  int sipSize = 20;

  void addSip() {
    currentWater += sipSize;
  }

  void addWater(int amount) {
    currentWater += amount;
  }

  double get progress => currentWater / dailyGoal;

  void resetDay() {
    currentWater = 0;
  }
}