class ShopPage extends StatelessWidget {
  final List<String> products = [
    'Reusable Water Bottle',
    'Organic Cotton Tote Bag',
    'Solar-Powered Phone Charger',
    'Compostable Phone Case'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shop Sustainable Products')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]),
            trailing: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Purchased: ${products[index]}'),
                ));
              },
              child: Text('Buy'),
            ),
          );
        },
      ),
    );
  }
}
