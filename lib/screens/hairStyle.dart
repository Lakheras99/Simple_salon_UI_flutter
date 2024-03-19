import 'dart:math';

import 'package:flutter/material.dart';

class HairCuttingPage extends StatelessWidget {
  // Sample data for cricket players
  final List<String> HairNames = [
    'Virat Kohli',
    'Steve Smith',
    'Kane Williamson',
    'Joe Root',
    'Rohit Sharma',
    'David Warner',
    'Quinton de Kock',
    'Babar Azam',
    'Ben Stokes',
  ];

  final List<String> HairPhotos = [
    'https://via.placeholder.com/150?text=Virat+Kohli',
    'https://via.placeholder.com/150?text=Steve+Smith',
    'https://via.placeholder.com/150?text=Kane+Williamson',
    'https://via.placeholder.com/150?text=Joe+Root',
    'https://via.placeholder.com/150?text=Rohit+Sharma',
    'https://via.placeholder.com/150?text=David+Warner',
    'https://via.placeholder.com/150?text=Quinton+de+Kock',
    'https://via.placeholder.com/150?text=Babar+Azam',
    'https://via.placeholder.com/150?text=Ben+Stokes',
  ];
  final List<double> HairRatings = [
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
        title: Text('Book a appointment'),
      ),
      body: ListView.builder(
        itemCount: HairNames.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(HairPhotos[index]),
              ),
              title: Text(HairNames[index]),
              subtitle: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text(HairRatings[index].toString()),
                ],
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Appointment Booked'),
                      content: Text('Your appointment with ${HairNames[index]} has been booked.'),
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
