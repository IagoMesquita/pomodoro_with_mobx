import 'package:mobx/mobx.dart';

part 'counter.store.g.dart';

class CounterStore = _CounterStore with _$CounterStore; 

abstract class _CounterStore with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }
}


  
  
// Atraves dos decorates @observable e @action, estou delegando as depencencias  
// "build_runner" & "mobx_codegen", a criação dos arquivos que irão conter o código
// que irá fazer o gerenciamento do estado.

// Para gerar esse arquivo, após criar o código acima, digitar no terminal, o seguinte comando:

// flutter pub run build_runner whatch