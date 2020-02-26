import 'package:mobx/mobx.dart';
import 'package:shopping_cart_mobx/product/model/product.dart';

part 'cart_item_bloc.g.dart';

class CartItem extends _CartItem with _$CartItem{
  CartItem(Product product) : super(product);

  @override
  bool operator == (other)=> product == other.product;

  @override
  int get hashCode => product.hashCode;
}

abstract class _CartItem with Store{
  @observable
   int quantity = 1;
  final Product product;

  _CartItem(this.product);

  @computed
  double get total => quantity * product.price;

  @action 
  void increment() => quantity++;

  @action
  void decrement() => quantity--;
}










































