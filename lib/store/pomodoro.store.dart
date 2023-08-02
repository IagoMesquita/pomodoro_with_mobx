import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store {
  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int workingTime = 10;

  @observable
  int restTime = 5;

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
}
