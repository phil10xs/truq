import 'package:flutter/material.dart';
import 'package:truq_assesment/core/usecases/usecases.dart';

import '../../domain/usecase/get_data.dart';

class MyNotifier with ChangeNotifier {
  MyNotifier({
    required this.getDataUsecase,
  });

  final GetDataUsecase getDataUsecase;

  List<dynamic> _data = [];
  final List<String> _foodCate = [
    'Streak',
    'Veg',
    'Beef',
    'Chicken',
  ];

  List<dynamic> get data => _data;
  List<String> get foodCate => _foodCate;

  Future<void> getData() async {
    var data = await getDataUsecase.call(const NoParams());

    return data.fold((l) => null, (r) {
      _data = r;
      print('$_data got here?');
      notifyListeners();
    });
  }

  var _current = 0;

  int get current => _current;

  set current(int value) {
    _current = value;

    notifyListeners();
  }

  var _currentFoodCate = 0;

  int get currentFoodCate => _currentFoodCate;
  set setcurrentFoodCate(int value) {
    _currentFoodCate = value;

    notifyListeners();
  }
}
