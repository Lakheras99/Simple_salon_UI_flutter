import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class SpaPage extends StatelessWidget {
  // Sample data for women cricketers
  final List<String> SpaNames = [
    'Mithali Raj',
    'Ellyse Perry',
    'Suzie Bates',
    'Smriti Mandhana',
    'Meg Lanning',
    'Jhulan Goswami',
    'Stafanie Taylor',
    'Alyssa Healy',
    'Tammy Beaumont',
  ];

  final List<String> SpaPhotos = [
    'https://via.placeholder.com/150?text=Mithali+Raj',
    'https://via.placeholder.com/150?text=Ellyse+Perry',
    'https://via.placeholder.com/150?text=Suzie+Bates',
    'https://via.placeholder.com/150?text=Smriti+Mandhana',
    'https://via.placeholder.com/150?text=Meg+Lanning',
    'https://via.placeholder.com/150?text=Jhulan+Goswami',
    'https://via.placeholder.com/150?text=Stafanie+Taylor',
    'https://via.placeholder.com/150?text=Alyssa+Healy',
    'https://via.placeholder.com/150?text=Tammy+Beaumont',
  ];

  final List<double> SpaRatings = [
    4.5,
    4.2,
    4.7,
    4.3,
    4.8,
    4.6,
    4.1,
    4.9,
    4.4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book an Appointment'),
      ),
      body: ListView.builder(
        itemCount: SpaNames.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(SpaPhotos[index]),
              ),
              title: Text(SpaNames[index]),
              subtitle: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text(SpaRatings[index].toString()),
                ],
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Appointment Booked'),
                      content: Text('Your appointment with ${SpaNames[index]} has been booked.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Text('Book Appointment'),
              ),
            ),
          );
        },
      ),
    );
  }
}
