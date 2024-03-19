import 'package:flutter/material.dart';

class FacialPage extends StatelessWidget {
  // Sample data for Bollywood actors
  final List<String> FacialNames = [
    'Shah Rukh Khan',
    'Salman Khan',
    'Aamir Khan',
    'Akshay Kumar',
    'Hrithik Roshan',
    'Ranbir Kapoor',
    'Varun Dhawan',
    'Ranveer Singh',
    'Ayushmann Khurrana',
  ];

  final List<String> FacialPhotos = [
    'https://via.placeholder.com/150?text=Shah+Rukh+Khan',
    'https://via.placeholder.com/150?text=Salman+Khan',
    'https://via.placeholder.com/150?text=Aamir+Khan',
    'https://via.placeholder.com/150?text=Akshay+Kumar',
    'https://via.placeholder.com/150?text=Hrithik+Roshan',
    'https://via.placeholder.com/150?text=Ranbir+Kapoor',
    'https://via.placeholder.com/150?text=Varun+Dhawan',
    'https://via.placeholder.com/150?text=Ranveer+Singh',
    'https://via.placeholder.com/150?text=Ayushmann+Khurrana',
  ];

  final List<double> FacialRatings = [
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
        itemCount: FacialNames.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(FacialPhotos[index]),
              ),
              title: Text(FacialNames[index]),
              subtitle: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text(FacialRatings[index].toString()),
                ],
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Appointment Booked'),
                      content: Text('Your appointment with ${FacialNames[index]} has been booked.'),
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
