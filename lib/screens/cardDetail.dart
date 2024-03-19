import 'package:flutter/material.dart';

class CardInfoPage extends StatefulWidget {
  final String actorName;

  CardInfoPage(this.actorName);

  @override
  _CardInfoPageState createState() => _CardInfoPageState();
}

class _CardInfoPageState extends State<CardInfoPage> {
  TextEditingController expiryDateController = TextEditingController();

  @override
  void dispose() {
    expiryDateController.dispose();
    super.dispose();
  }

  Future<void> _selectExpiryDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 10),
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        expiryDateController.text = "${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Card Information'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Card Number'),
            keyboardType: TextInputType.number,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Name on Card'),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: 'CVV'),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(width: 10),
              TextFormField(
                controller: expiryDateController,
                decoration: InputDecoration(labelText: 'Expiry Date'),
                readOnly: true,
                onTap: () => _selectExpiryDate(context),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please select expiry date';
                  }
                  return null;
                },
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // Simulate going back to the previous page (Spa or Massage Therapy page) and show confirmation
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Appointment Booked'),
                  content: Text(
                      'Your appointment with ${widget.actorName} has been booked.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).popUntil(
                            ModalRoute.withName(Navigator.defaultRouteName));
                      },
                      child: Text('OK'),
                    ),
                  ],
                ),
              );
            },
            child: Text('Go to Payment'),
          ),
        ],
      ),
    );
  }
}
