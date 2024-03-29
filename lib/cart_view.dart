import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'cartCard.dart';


class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Item> items = <Item>[
    Item(
        name: 'Item 1',
        price: 100,
        quantity: 1,
        image: 'assets/images/product1.jpeg',
        discount: 50),
    Item(
        name: 'Item 2',
        price: 200,
        quantity: 2,
        image: 'assets/images/product2.jpeg',
        discount: 50),
    Item(
        name: 'Item 3',
        price: 300,
        quantity: 3,
        image: 'assets/images/product3.jpeg',
        discount: 50),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.black),
                      left: BorderSide(width: 1.0, color: Colors.black),
                      right: BorderSide(width: 1.0, color: Colors.black),
                      bottom: BorderSide(width: 1.0, color: Colors.black),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                width: 340,
                height: 600,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            'Cart',
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              // Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close)),
                      ],
                    ),
                    SizedBox(
                      width: 340,
                      height: 450,
                      child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CardItem(item: items[index]);
                        },
                      ),
                    ),
                    Text(
                      'Total: ${items.fold<int>(0, (previousValue, element) => previousValue + element.price * element.quantity)}',
                      style: const TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.blueAccent),
                        onPressed: () {},
                        child: const Text('Pay now'))
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}