import 'package:flutter/material.dart';
class SharePage extends StatelessWidget {

  void _showShareDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Share Achievements'),
        content: Text('Share your sustainability achievements on social media!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Shared on social media!'),
              ));
            },
            child: Text('Share'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Share Achievements')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showShareDialog(context),
          child: Text('Share Your Achievement'),
        ),
      ),
    );
  }
}
