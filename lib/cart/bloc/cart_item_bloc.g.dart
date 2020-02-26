// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_bloc.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartItem on _CartItem, Store {
  Computed<double> _$totalComputed;

  @override
  double get total =>
      (_$totalComputed ??= Computed<double>(() => super.total)).value;

  final _$quantityAtom = Atom(name: '_CartItem.quantity');

  @override
  int get quantity {
    _$quantityAtom.context.enforceReadPolicy(_$quantityAtom);
    _$quantityAtom.reportObserved();
    return super.quantity;
  }

  @override
  set quantity(int value) {
    _$quantityAtom.context.conditionallyRunInAction(() {
      super.quantity = value;
      _$quantityAtom.reportChanged();
    }, _$quantityAtom, name: '${_$quantityAtom.name}_set');
  }

  final _$_CartItemActionController = ActionController(name: '_CartItem');

  @override
  void increment() {
    final _$actionInfo = _$_CartItemActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_CartItemActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$_CartItemActionController.startAction();
    try {
      return super.decrement();
    } finally {
      _$_CartItemActionController.endAction(_$actionInfo);
    }
  }
}
