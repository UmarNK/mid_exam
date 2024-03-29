import 'package:flutter/material.dart';
import 'package:lab_mid/cart_view.dart';
import 'package:lab_mid/home_page.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.product});
  final Product product;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
      ),
      body: Column(
        children: [
          Image.asset(widget.product.image),
          Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Text(widget.product.name,
                      style: const TextStyle(fontSize: 20)),
                  Text(widget.product.price.toString(),
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim.",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              )),
          Container(
            height: 100,
            color: const Color.fromARGB(255, 106, 136, 189),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Cart()));
                  },
                  child: const Text("Add to Cart"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Cart()));
                  },
                  child: const Text("checkout"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
