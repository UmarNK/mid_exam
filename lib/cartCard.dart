import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {
  const CardItem({super.key, required this.item});
  final Item item;
  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.item.name),
      subtitle:
      Text('Price:${widget.item.price}\nDiscount:${widget.item.discount}'),
      trailing: SizedBox(
        width: 104,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    widget.item.quantity++;
                  });
                },
                icon: const Icon(
                  Icons.add,
                  size: 20,
                )),
            Text('${widget.item.quantity}'),
            IconButton(
                onPressed: () {
                  setState(() {
                    if (widget.item.quantity > 1) {
                      widget.item.quantity--;
                    }
                  });
                },
                icon: const Icon(
                  Icons.remove,
                  size: 20,
                )),
          ],
        ),
      ),
      leading: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          height: 150,
          width: 100,
          child: Image.asset(
            widget.item.image,
            fit: BoxFit.fitHeight,
          )),
    );
  }
}

class Item {
  String name;
  int price;
  int discount;
  int quantity;
  String image;
  Item(
      {required this.name,
        required this.discount,
        required this.price,
        required this.quantity,
        required this.image});
}