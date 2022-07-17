import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'home_controller.g.dart';

class HomeController = HomeStore with _$HomeController;

abstract class HomeStore with Store {
  late SharedPreferences sharedPreferences;

  @observable
  double firstNumber = 0;

  @observable
  double secondNumber = 0;

  @observable
  double result = 0;

  @observable
  String operation = '';

  @observable
  String display = '0';

  @observable
  bool firstValue = false;

  @observable
  bool clearNext = false;

  @action
  void setFirstNumber(double value) {
    firstNumber = value;
  }

  @action
  void setSecondNumber(double value) {
    secondNumber = value;
  }

  @action
  void setResult(double value) {
    result = value;
  }

  @action
  void setOperation(String value) {
    operation = value;
  }

  @action
  void setDisplay(String value, {bool clear = false}) {
    if (display == '0' || clearNext) {
      display = value;
      clearNext = false;
    } else {
      if (clear) {
        display = value;
      } else {
        display += value;
      }
    }
  }

  @action
  void setFirstValue(bool value) {
    firstValue = value;
  }

  Future init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @action
  void getValue() {
    if (!firstValue) {
      setFirstNumber(double.parse(display));
      setFirstValue(true);
      setDisplay('', clear: true);
    } else {
      setSecondNumber(double.parse(display));
      setFirstValue(false);
      calculate();
    }
  }

  @action
  void calculate() {
    switch (operation) {
      case '+':
        setResult(sum());
        break;
      case '-':
        setResult(subtract());
        break;
      case 'X':
        setResult(multiply());
        break;
      case '/':
        setResult(divide());
        break;
    }

    List<String> resultsHistory =
        sharedPreferences.getStringList('results_history') ?? [];

    sharedPreferences.setStringList('results_history', resultsHistory);

    setFirstValue(false);
    setDisplay(result.toString(), clear: true);

    clearNext = true;
  }

  @action
  double sum() {
    result = firstNumber + secondNumber;
    return result;
  }

  @action
  double subtract() {
    result = firstNumber - secondNumber;
    return result;
  }

  @action
  double multiply() {
    result = firstNumber * secondNumber;
    return result;
  }

  @action
  double divide() {
    result = firstNumber / secondNumber;
    return result;
  }

  @action
  void clearLast() {
    display = display.substring(0, display.length - 1);
  }

  @action
  void clear() {
    firstNumber = 0;
    secondNumber = 0;
    result = 0;
  }
}
