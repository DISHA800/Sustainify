import 'package:flutter/material.dart';
class EventsPage extends StatelessWidget {
  final List<String> events = [
    'Earth Day Celebration',
    'Climate March 2025',
    'Community Cleanup Drive',
    'Sustainability Workshop'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Upcoming Events')),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(events[index]),
            trailing: Icon(Icons.event_available, color: Colors.green),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Joined event: ${events[index]}'),
              ));
            },
          );
        },
      ),
    );
  }
}
