import 'package:flutter/material.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber,
        image: const DecorationImage(
          image: NetworkImage(
            'https://img.freepik.com/premium-vector/special-offer-sale-discount-banner_180786-46.jpg',
          ),
        ),
      ),
    );
  }
}
