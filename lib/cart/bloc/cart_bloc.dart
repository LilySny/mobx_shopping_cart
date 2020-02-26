
import 'package:mobx/mobx.dart';
import 'package:shopping_cart_mobx/cart/bloc/cart_item_bloc.dart';
import 'package:shopping_cart_mobx/product/model/product.dart';

part 'cart_bloc.g.dart';

class CartBloc extends _CartBloc with _$CartBloc {
  static CartBloc _instance;

  CartBloc._();

  static CartBloc getInstance(){
    _instance ??= CartBloc._();
    return _instance;
  }
  
}

abstract class _CartBloc with Store{
  @observable
  ObservableList<CartItem> items = ObservableList<CartItem>();

  @computed 
  int get itemsAmount => items.length;

  @computed
  double get totalPrice => items.fold(0, (acc, curr) => curr.total + acc);


  @action
  void add(Product product){
    final CartItem item = CartItem(product);
    if(!items.contains(item))
    items.add(item);
  } 

  @action
  void remove(CartItem item){
    items.remove(item);
  }

}
