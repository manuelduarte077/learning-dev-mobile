import 'package:flutter/cupertino.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
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
