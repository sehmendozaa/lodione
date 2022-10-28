import 'package:flutter/material.dart';

import '../functions/addorder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lodione Home'),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        color: Colors.brown.shade400,
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddOrder(),
                    ),
                  );
                },
                child: const Text('Add order +'),
              ),
              Row(
                children: const [
                  Text('Product'),
                  Text('Picture'),
                ],
              ),
              Row(
                children: [
                  const Text('Size'),
                  Column(
                    children: const [
                      Text('Product Price'),
                      Text(r'$'),
                    ],
                  )
                ],
              ),
              Row(
                children: const [
                  Text('Small'),
                  Text('Large'),
                ],
              ),
              const Text('Delivery Date: '),
              const Text('Time of Delivery: '),
              const Text('Delivery Address: '),
              const Text('Commercial or Residencial'),
              const Text('Total Price: '),
            ],
          ),
        ),
      ),
    );
  }
}
