import 'package:flutter/material.dart';

class MassageTherapyPage extends StatelessWidget {
  // Sample data for Bollywood actresses
  final List<String> MassageTherapyNames = [
    'Deepika Padukone',
    'Priyanka Chopra',
    'Kareena Kapoor',
    'Alia Bhatt',
    'Katrina Kaif',
    'Anushka Sharma',
    'Sonam Kapoor',
    'Shraddha Kapoor',
    'Taapsee Pannu',
  ];

  final List<String> MassageTherapyPhotos = [
    'https://via.placeholder.com/150?text=Deepika+Padukone',
    'https://via.placeholder.com/150?text=Priyanka+Chopra',
    'https://via.placeholder.com/150?text=Kareena+Kapoor',
    'https://via.placeholder.com/150?text=Alia+Bhatt',
    'https://via.placeholder.com/150?text=Katrina+Kaif',
    'https://via.placeholder.com/150?text=Anushka+Sharma',
    'https://via.placeholder.com/150?text=Sonam+Kapoor',
    'https://via.placeholder.com/150?text=Shraddha+Kapoor',
    'https://via.placeholder.com/150?text=Taapsee+Pannu',
  ];

  final List<double> MassageTherapyRatings = [
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
        title: Text('Book a Massage Therapy'),
      ),
      body: ListView.builder(
        itemCount: MassageTherapyNames.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(MassageTherapyPhotos[index]),
              ),
              title: Text(MassageTherapyNames[index]),
              subtitle: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text(MassageTherapyRatings[index].toString()),
                ],
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Appointment Booked'),
                      content: Text('Your massage therapy appointment with ${MassageTherapyNames[index]} has been booked.'),
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
