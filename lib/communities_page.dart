import 'package:flutter/material.dart';
class CommunitiesPage extends StatelessWidget {
  final List<String> communities = [
    'Eco Warriors',
    'Green Thumbs',
    'Sustainability Enthusiasts',
    'Climate Action Collective'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Join Communities')),
      body: ListView.builder(
        itemCount: communities.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(communities[index]),
            trailing: Icon(Icons.check_circle, color: Colors.green),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Joined ${communities[index]}!'),
              ));
            },
          );
        },
      ),
    );
  }
}
