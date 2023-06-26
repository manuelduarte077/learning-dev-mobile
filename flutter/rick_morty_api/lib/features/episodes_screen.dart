import 'package:flutter/cupertino.dart';

class EpisodesScreen extends StatefulWidget {
  const EpisodesScreen({super.key});

  @override
  State<EpisodesScreen> createState() => _EpisodesScreenState();
}

class _EpisodesScreenState extends State<EpisodesScreen> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Episodes'),
          ),
          SliverFillRemaining(
            child: EpisodesWidget(),
          ),
        ],
      ),
    );
  }
}

class EpisodesWidget extends StatelessWidget {
  const EpisodesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Episodes');
  }
}
