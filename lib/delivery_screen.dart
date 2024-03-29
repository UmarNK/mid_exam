import 'package:flutter/material.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            'Delivery Details',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        // IconButton(
                        //     onPressed: () {
                        //       // Navigator.pop(context);
                        //     },
                        //     icon: const Icon(Icons.close)),
                      ],
                    ),
                    // add text form fields to get delivery charges and elivery details
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                          indent: 20,
                          endIndent: 20,
                        ),
                        // add text form fields to get delivery charges and elivery details
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 8),
                          child: Text(
                            'Delivery charges: 50',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 8),
                          child: Text(
                            'Delivery Address: 123, xyz street, abc city',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                          indent: 20,
                          endIndent: 20,
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.blueAccent),
                          onPressed: () {
                            //show snackbar whenorder placed
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Center(
                                  child: Text(
                                    'Order Placed',
                                    style: TextStyle(
                                        color: Colors.white, // Text color
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold // Text size
                                        ),
                                  ),
                                ),
                                backgroundColor:
                                    Colors.green, // Background color
                                duration: const Duration(
                                    seconds: 3), // Duration to display
                                behavior: SnackBarBehavior
                                    .floating, // Floating SnackBar
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Rounded corners
                                ),
                                margin: const EdgeInsets.all(
                                    10.0), // Margin around the SnackBar
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical:
                                        12.0), // Padding inside the SnackBar
                                elevation: 6.0, // Elevation
                              ),
                            );
                          },
                          child: const Text(
                            'Place Order',
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
}
