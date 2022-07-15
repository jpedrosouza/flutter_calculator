// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeStore, Store {
  late final _$firstNumberAtom =
      Atom(name: 'HomeStore.firstNumber', context: context);

  @override
  double get firstNumber {
    _$firstNumberAtom.reportRead();
    return super.firstNumber;
  }

  @override
  set firstNumber(double value) {
    _$firstNumberAtom.reportWrite(value, super.firstNumber, () {
      super.firstNumber = value;
    });
  }

  late final _$secondNumberAtom =
      Atom(name: 'HomeStore.secondNumber', context: context);

  @override
  double get secondNumber {
    _$secondNumberAtom.reportRead();
    return super.secondNumber;
  }

  @override
  set secondNumber(double value) {
    _$secondNumberAtom.reportWrite(value, super.secondNumber, () {
      super.secondNumber = value;
    });
  }

  late final _$resultAtom = Atom(name: 'HomeStore.result', context: context);

  @override
  double get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(double value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  late final _$operationAtom =
      Atom(name: 'HomeStore.operation', context: context);

  @override
  String get operation {
    _$operationAtom.reportRead();
    return super.operation;
  }

  @override
  set operation(String value) {
    _$operationAtom.reportWrite(value, super.operation, () {
      super.operation = value;
    });
  }

  late final _$displayAtom = Atom(name: 'HomeStore.display', context: context);

  @override
  String get display {
    _$displayAtom.reportRead();
    return super.display;
  }

  @override
  set display(String value) {
    _$displayAtom.reportWrite(value, super.display, () {
      super.display = value;
    });
  }

  late final _$firstValueAtom =
      Atom(name: 'HomeStore.firstValue', context: context);

  @override
  bool get firstValue {
    _$firstValueAtom.reportRead();
    return super.firstValue;
  }

  @override
  set firstValue(bool value) {
    _$firstValueAtom.reportWrite(value, super.firstValue, () {
      super.firstValue = value;
    });
  }

  late final _$HomeStoreActionController =
      ActionController(name: 'HomeStore', context: context);

  @override
  void setFirstNumber(double value) {
    final _$actionInfo = _$HomeStoreActionController.startAction(
        name: 'HomeStore.setFirstNumber');
    try {
      return super.setFirstNumber(value);
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSecondNumber(double value) {
    final _$actionInfo = _$HomeStoreActionController.startAction(
        name: 'HomeStore.setSecondNumber');
    try {
      return super.setSecondNumber(value);
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setResult(double value) {
    final _$actionInfo =
        _$HomeStoreActionController.startAction(name: 'HomeStore.setResult');
    try {
      return super.setResult(value);
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOperation(String value) {
    final _$actionInfo =
        _$HomeStoreActionController.startAction(name: 'HomeStore.setOperation');
    try {
      return super.setOperation(value);
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDisplay(String value, {bool clear = false}) {
    final _$actionInfo =
        _$HomeStoreActionController.startAction(name: 'HomeStore.setDisplay');
    try {
      return super.setDisplay(value, clear: clear);
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFirstValue(bool value) {
    final _$actionInfo = _$HomeStoreActionController.startAction(
        name: 'HomeStore.setFirstValue');
    try {
      return super.setFirstValue(value);
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getValue() {
    final _$actionInfo =
        _$HomeStoreActionController.startAction(name: 'HomeStore.getValue');
    try {
      return super.getValue();
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calculate() {
    final _$actionInfo =
        _$HomeStoreActionController.startAction(name: 'HomeStore.calculate');
    try {
      return super.calculate();
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  double sum() {
    final _$actionInfo =
        _$HomeStoreActionController.startAction(name: 'HomeStore.sum');
    try {
      return super.sum();
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  double subtract() {
    final _$actionInfo =
        _$HomeStoreActionController.startAction(name: 'HomeStore.subtract');
    try {
      return super.subtract();
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  double multiply() {
    final _$actionInfo =
        _$HomeStoreActionController.startAction(name: 'HomeStore.multiply');
    try {
      return super.multiply();
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  double divide() {
    final _$actionInfo =
        _$HomeStoreActionController.startAction(name: 'HomeStore.divide');
    try {
      return super.divide();
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearLast() {
    final _$actionInfo =
        _$HomeStoreActionController.startAction(name: 'HomeStore.clearLast');
    try {
      return super.clearLast();
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo =
        _$HomeStoreActionController.startAction(name: 'HomeStore.clear');
    try {
      return super.clear();
    } finally {
      _$HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
firstNumber: ${firstNumber},
secondNumber: ${secondNumber},
result: ${result},
operation: ${operation},
display: ${display},
firstValue: ${firstValue}
    ''';
  }
}
