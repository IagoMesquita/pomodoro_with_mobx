import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store {
  @observable
  int workingTime = 2;

  @observable
  int restTime = 1;

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
