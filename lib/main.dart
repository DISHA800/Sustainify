import 'package:flutter/material.dart';
import 'communities_page.dart';      // New import
import 'tips_page.dart';           // New import
import 'achievements_page.dart';   // New import
import 'carbon_footprint_page.dart'; // New import
import 'share_page.dart';          // New import
import 'shop_page.dart';           // New import
import 'events_page.dart';         // New import
import 'achievement_image_page.dart'; // New import

void main() {
  runApp(SustainifyApp());
}

class SustainifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sustainify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.green,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
          bodyLarge: TextStyle(color: Colors.green, fontSize: 18),
        ),
      ),
      home: SustainHomePage(),
    );
  }
}

// 🏠 Landing Page
class SustainHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.eco, size: 80, color: Colors.green),
              SizedBox(height: 20),
              Text(
                'Sustainify',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 10),
              Text(
                'Sort Smart. Save the Planet. Get Rewarded!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginSignupPage()),
                  );
                },
                child: Text('Get Started', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 👤 Login / Sign Up Page
class LoginSignupPage extends StatelessWidget {
  void _showSuccessDialog(BuildContext context, String title) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title),
        content: Text('Welcome to Sustainify!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => FeatureListPage()),
              );
            },
            child: Text('Continue'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.nature_people, size: 80, color: Colors.green),
              SizedBox(height: 20),
              Text(
                'Join the Sustain Movement!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => _showSuccessDialog(context, 'Login Successful'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: Text('Login', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () => _showSuccessDialog(context, 'Account Created'),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.green),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: Text('Sign Up', style: TextStyle(color: Colors.green)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// In your existing FeatureListPage
class FeatureListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SustainHub'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FeatureCard(
              title: 'Join Communities',
              description: 'Explore and join communities passionate about sustainable living.',
              icon: Icons.group,
              image: 'assets/community.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommunitiesPage()),
                );
              },
            ),
            FeatureCard(
              title: 'Share Tips & Success Stories',
              description: 'Share tips and success stories about living sustainably.',
              icon: Icons.lightbulb_outline,
              image: 'assets/tips.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TipsPage()),
                );
              },
            ),
            FeatureCard(
              title: 'My Achievements',
              description: 'Celebrate your sustainability milestones and badges!',
              icon: Icons.star,
              image: 'assets/achievements.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AchievementsPage()),
                );
              },
            ),
            FeatureCard(
              title: 'Carbon Footprint Tracker',
              description: 'Track your carbon footprint and stay eco-aware.',
              icon: Icons.bar_chart,
              image: 'assets/carbon_footprint.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CarbonFootprintPage()),
                );
              },
            ),
            FeatureCard(
              title: 'Share Your Progress',
              description: 'Generate and customize a shareable summary of your green journey.',
              icon: Icons.share,
              image: 'assets/sharing.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SharePage()),
                );
              },
            ),
            FeatureCard(
              title: 'Eco Shop',
              description: 'Discover and redeem points for eco-friendly products.',
              icon: Icons.shopping_cart,
              image: 'assets/shopping.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShopPage()),
                );
              },
            ),
            FeatureCard(
              title: 'Sustainable Events',
              description: 'Find local clean-up drives, workshops, and green events.',
              icon: Icons.event,
              image: 'assets/events.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventsPage()),
                );
              },
            ),
            FeatureCard(
              title: 'Achievement Gallery',
              description: 'Visual display of badges, trophies, and achievements.',
              icon: Icons.emoji_events,
              image: 'assets/achievements.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AchievementImagePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


// 💚 Reusable Feature Card
class FeatureCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final String image;
  final VoidCallback onTap;

  const FeatureCard({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              height: 200,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(icon, size: 40, color: Colors.green),
                  SizedBox(height: 10),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



