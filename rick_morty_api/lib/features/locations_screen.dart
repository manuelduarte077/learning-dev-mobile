import 'package:flutter/cupertino.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Locations'),
          ),
          SliverFillRemaining(
            child: LocationsWidget(),
          ),
        ],
      ),
    );
  }
}

class LocationsWidget extends StatelessWidget {
  const LocationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Locations');
  }
}
