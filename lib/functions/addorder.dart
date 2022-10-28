import 'package:flutter/material.dart';

class AddOrder extends StatefulWidget {
  const AddOrder({super.key});

  @override
  State<AddOrder> createState() => _AddOrderState();
}

class _AddOrderState extends State<AddOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Text("Customer Name"),
              SizedBox(
                width: 150,
                child: TextField(
                  textAlign: TextAlign.center,
                ),
              ),
              Text('Product Selection'),
              Row(
                children: [
                  SizedBox(
                    child: Image.asset('images/cassava.jpg'),
                    height: 400,
                    width: 400,
                  ),
                  SizedBox(
                    child: Image.asset('images/sumanyakap.jpg'),
                    height: 400,
                    width: 400,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
