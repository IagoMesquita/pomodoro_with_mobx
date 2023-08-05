import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum BreakType { WORK, REST }

abstract class _PomodoroStore with Store {
  @observable
  bool isStarted = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int workingTime = 1;

  @observable
  int restTime = 5;

  @observable
  BreakType breakType = BreakType.REST;

  Timer? chronometer;

  @action
  void start() {
    chronometer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (minutes == 0 && seconds == 0) {
        _changeRangeType();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
    isStarted = true;
  }

  @action
  void tostop() {
    isStarted = false;
    chronometer?.cancel();
  }

  @action
  void restart() {
    isStarted = false;
    tostop();
    minutes = isWorking() ? workingTime : restTime;
    seconds = 0;
  }

  @action
  void incrementWorkingTime() {
    workingTime++;
    if (isWorking()) {
      restart();
    }
  }

  @action
  void decrementWorkingTime() {
    if (workingTime > 1) {
      workingTime--;
      if (isWorking()) {
        restart();
      }
    }
  }

  @action
  void incrementRestTime() {
    restTime++;
    if (isResting()) {
      restart();
    }
  }

  @action
  void decrementRestTime() {
    if (restTime > 1) {
      restTime--;
      if (isResting()) {
        restart();
      }
    }
  }

  bool isWorking() {
    return breakType == BreakType.WORK;
  }

  bool isResting() {
    return breakType == BreakType.REST;
  }

  void _changeRangeType() {
    if (isWorking()) {
      breakType = BreakType.REST;
      minutes = restTime;
    } else {
      breakType = BreakType.WORK;
      minutes = workingTime;
    }

    seconds = 0;
  }
}
