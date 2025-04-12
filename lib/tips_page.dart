class TipsPage extends StatelessWidget {
  final List<String> tips = [
    'Use reusable bags instead of plastic.',
    'Plant a tree for every occasion.',
    'Switch to energy-efficient LED lights.',
    'Recycle and compost to reduce waste.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sustainability Tips')),
      body: ListView.builder(
        itemCount: tips.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tips[index]),
            trailing: IconButton(
              icon: Icon(Icons.share, color: Colors.green),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Shared tip: ${tips[index]}'),
                ));
              },
            ),
          );
        },
      ),
    );
  }
}
