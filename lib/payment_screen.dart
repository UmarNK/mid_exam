import 'package:flutter/material.dart';
import 'package:lab_mid/delivery_screen.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool _showPaymentDetails = false;
  bool _selected = false;
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expiryDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  List<PaymentOptions> paymentoptions = <PaymentOptions>[
    PaymentOptions(name: "COD", type: "Cash on Delivery"),
    PaymentOptions(name: "Online", type: "Online"),
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
                width: 400,
                height: 600,
                child: Column(
                  children: [
                    _showPaymentDetails
                        ? const SizedBox(
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Fill in your details',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                        : Container(),
                    _showPaymentDetails
                        ? Container()
                        : Column(
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 8),
                                    child: Text(
                                      'Select a payment method',
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 340,
                                height: 450,
                                child: ListView.builder(
                                  itemCount: paymentoptions.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      margin: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ListTile(
                                        title: Text(
                                          paymentoptions[index].name,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                        subtitle: Text(
                                          paymentoptions[index].type,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                        trailing: _selected
                                            ? paymentoptions[index].name ==
                                                    "COD"
                                                ? const Icon(
                                                    Icons.check,
                                                    color: Colors.white,
                                                  )
                                                : null
                                            : null,
                                        onTap: () {
                                          if (paymentoptions[index].name ==
                                              "Online") {
                                            setState(() {
                                              _showPaymentDetails = true;
                                            });
                                          }
                                          if (paymentoptions[index].name ==
                                              "COD") {
                                            setState(() {
                                              _selected = !_selected;
                                            });
                                          }
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                    _showPaymentDetails ? _paymentDetails() : Container(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.blueAccent),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DeliveryPage(),
                              ),
                            );
                            // Navigator.pushNamed(context,  //Naviagte to delivery page
                            //
                            //      );
                          },
                          child: const Text(
                            'Confirm Payment Details',
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ]),
    );
  }

  Widget _paymentDetails() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: cardNumberController,
            decoration: const InputDecoration(
              hintText: "Enter Card Number",
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: expiryDateController,
            decoration: const InputDecoration(
              hintText: "Enter Expiry Date",
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: cvvController,
            decoration: const InputDecoration(
              hintText: "Enter CVV",
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

class PaymentOptions {
  String name;
  String type;
  PaymentOptions({required this.name, required this.type});
}
