import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum BreakType {WORK, REST}
abstract class _PomodoroStore with Store {


  @observable
  bool isStarted = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int workingTime = 10;

  @observable
  int restTime = 5;

  @observable
  BreakType breakType = BreakType.REST;

  @action
  void start() {
    isStarted = true;
  }

  @action
  void tostop() {
    isStarted = false;
  }

  @action
  void restart () {
    isStarted = false;
  }
  @action
  void incrementWorkingTime() {
    workingTime++;
  }

  @action
  void decrementWorkingTime() {
    workingTime--;
  }

  @action
  void incrementRestTime() {
    restTime++;
  }

  @action
  void decrementRestTime() {
    restTime--;
  }

  bool isWorking() {
    return breakType == BreakType.WORK;
  }

  bool isResting() {
    return breakType == BreakType.REST;
  }
}
