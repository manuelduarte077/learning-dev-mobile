import 'package:flutter/material.dart';
import 'package:icecream_store/screens/details_screen.dart';
import '../data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// TopBar
            TopBar(),

            /// Featured
            FeaturedListView(),

            /// Popular
            PopularDivider(),

            /// Popular Grid
            PopularGridView(),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Geo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ]);
  }
}

class PopularGridView extends StatelessWidget {
  const PopularGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.3,
          ),
          itemCount: gridPopular.length,
          itemBuilder: (context, index) {
            final item = gridPopular[index];

            return SmallCard(
              image: item.values.elementAt(0).toString(),
              name: item.values.elementAt(1).toString(),
              description: item.values.elementAt(2).toString(),
            );
          },
        ),
      ),
    );
  }
}

class SmallCard extends StatelessWidget {
  final String image;
  final String name;
  final String description;

  const SmallCard({
    Key? key,
    required this.image,
    required this.name,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image.asset(fit: BoxFit.cover, width: 170, height: 150, image),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: textTheme.titleMedium?.copyWith(
                  color: const Color(0xFF290a54),
                ),
              ),
              Text(
                description,
                style: textTheme.titleSmall?.copyWith(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PopularDivider extends StatelessWidget {
  const PopularDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Most populer',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF290a54),
            ),
          ),
          Text(
            'see more',
            style: TextStyle(
              color: Color(0xFFfe93a4),
            ),
          )
        ],
      ),
    );
  }
}

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        scrollDirection: Axis.horizontal,
        itemCount: carrousellPrincipal.length,
        itemBuilder: (context, index) {
          final item = carrousellPrincipal[index];

          return GestureDetector(
            child: Hero(
              tag: item.name,
              key: Key(item.name),
              child: Card(
                image: item.image,
                name: item.name,
                price: item.price,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailScreen(helado: item),
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const Card({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      height: 300,
      width: 200,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [
              Colors.grey.withOpacity(0.0),
              Colors.black38,
            ],
            stops: const [0.5, 1.0],
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                price,
                style: textTheme.titleSmall?.copyWith(
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discover',
                    style: textTheme.titleLarge?.copyWith(
                      color: const Color(0xFF290a54),
                    ),
                  ),
                  const Text('Lorem ipsum dolor sit amet')
                ],
              ),
              const Icon(Icons.search),
            ],
          ),
        ],
      ),
    );
  }
}
