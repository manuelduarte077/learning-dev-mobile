import 'package:flutter/material.dart';
import 'package:travel_app/data.dart';
import 'package:travel_app/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().themeData,
      themeMode: ThemeMode.system,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Title(),

              /// Scrollable list
              const PlacesCard(),

              /// Activity
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Actividades",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              /// Scrollable list
              const ActivityCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        scrollDirection: Axis.vertical,
        itemCount: activities.length,
        itemBuilder: (context, index) {
          final activity = activities[index];

          final imagePath = activity['image'] ?? '';

          return Container(
            width: 320,
            height: 86,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.8),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          activity['name'] ?? '',
                          style: textTheme.titleMedium
                              ?.copyWith(color: Colors.white),
                        ),
                        Text(
                          activity['duration'] ?? '',
                          style: textTheme.titleSmall
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Text(
                      activity['price'] ?? '',
                      style:
                          textTheme.titleMedium?.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class PlacesCard extends StatelessWidget {
  const PlacesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];

          final imagePath = place['image'] ?? '';

          return Container(
            width: 248,
            height: 164,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.8),
                  ],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          place['place'] ?? '',
                          style: textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          place['description'] ?? '',
                          style: textTheme.titleSmall?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nicaragua",
            style: textTheme.titleLarge,
          ),
          Text(
            "Lugares turísticos",
            style: textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
