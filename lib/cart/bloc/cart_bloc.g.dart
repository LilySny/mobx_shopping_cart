// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_bloc.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartBloc on _CartBloc, Store {
  Computed<int> _$itemsAmountComputed;

  @override
  int get itemsAmount =>
      (_$itemsAmountComputed ??= Computed<int>(() => super.itemsAmount)).value;
  Computed<double> _$totalPriceComputed;

  @override
  double get totalPrice =>
      (_$totalPriceComputed ??= Computed<double>(() => super.totalPrice)).value;

  final _$itemsAtom = Atom(name: '_CartBloc.items');

  @override
  ObservableList<CartItem> get items {
    _$itemsAtom.context.enforceReadPolicy(_$itemsAtom);
    _$itemsAtom.reportObserved();
    return super.items;
  }

  @override
  set items(ObservableList<CartItem> value) {
    _$itemsAtom.context.conditionallyRunInAction(() {
      super.items = value;
      _$itemsAtom.reportChanged();
    }, _$itemsAtom, name: '${_$itemsAtom.name}_set');
  }

  final _$_CartBlocActionController = ActionController(name: '_CartBloc');

  @override
  void add(Product product) {
    final _$actionInfo = _$_CartBlocActionController.startAction();
    try {
      return super.add(product);
    } finally {
      _$_CartBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(CartItem item) {
    final _$actionInfo = _$_CartBlocActionController.startAction();
    try {
      return super.remove(item);
    } finally {
      _$_CartBlocActionController.endAction(_$actionInfo);
    }
  }
}
