class AchievementsPage extends StatelessWidget {
  final List<String> achievements = [
    'Reduced carbon footprint by 10%',
    'Planted 100 trees!',
    'Recycled 500kg of waste',
    'Completed a zero-waste challenge'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Achievements')),
      body: ListView.builder(
        itemCount: achievements.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(achievements[index]),
            trailing: Icon(Icons.star, color: Colors.yellow),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Achievement unlocked: ${achievements[index]}'),
              ));
            },
          );
        },
      ),
    );
  }
}
