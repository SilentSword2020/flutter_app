import 'package:flutter/material.dart';
import 'package:flutter_app/widget/shopping_cart/shopping_cart_item.dart';

//https://flutterchina.club/widgets-intro/
void main() {
  runApp(new MaterialApp(
    title: 'Shopping App',
    home: new ShoppingList(
      products: <Product>[
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
        new Product(name: 'green bean'),
        new Product(name: 'onion'),
        new Product(name: 'cayenne pepper'),
      ],
    ),
  ));
}

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.products}) : super(key: key);

  final List<Product> products;

  // The framework calls createState the first time a widget appears at a given
  // location in the tree. If the parent rebuilds and uses the same type of
  // widget (with the same key), the framework will re-use the State object
  // instead of creating a new State object.

  @override
  _ShoppingListState createState() => new _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = new Set<Product>();

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      // When user changes what is in the cart, we need to change _shoppingCart
      // inside a setState call to trigger a rebuild. The framework then calls
      // build, below, which updates the visual appearance of the app.

      if (inCart)
        _shoppingCart.add(product);
      else
        _shoppingCart.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Shopping List'),
      ),
      body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product) {
          return new ShoppingListItem(
            product: product,
            inCart: _shoppingCart.contains(product),
            onCartChanged: _handleCartChanged,
          );
        }).toList(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    //TODO 当一个状态对象不再需要时，框架调用状态对象的dispose(): 清理资源
  }

  @override
  void didUpdateWidget(ShoppingList oldWidget) {
    super.didUpdateWidget(oldWidget);
    //TODO  如果希望在widget属性更改时收到通知，则可以覆盖didUpdateWidget函数，以便将旧的oldWidget与当前widget进行比较
  }

  @override
  void initState() {
    super.initState();
    //TODO 子类化State可以重写initState，以完成仅需要执行一次的工作
    //TODO initState的实现中需要调用super.initState()
  }
}
