import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty_api/features/episodes/provider/episode_provider.dart';

class EpisodesScreen extends StatefulWidget {
  const EpisodesScreen({super.key});

  @override
  State<EpisodesScreen> createState() => _EpisodesScreenState();
}

class _EpisodesScreenState extends State<EpisodesScreen> {
  final scrollController = ScrollController();
  bool isLoading = false;
  int page = 1;

  @override
  void initState() {
    super.initState();

    final episodeProvider =
        Provider.of<EpisodeProvider>(context, listen: false);
    episodeProvider.getEpisodes(page);

    scrollController.addListener(() async {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        setState(() {
          isLoading = true;
        });

        page++;
        await episodeProvider.getEpisodes(page);

        setState(() {
          isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final episodeProvider = Provider.of<EpisodeProvider>(context);

    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Episodes'),
          ),
          SliverFillRemaining(
            child: EpisodesWidget(
              episodeProvider: episodeProvider,
              scrollController: scrollController,
              isLoading: isLoading,
            ),
          ),
        ],
      ),
    );
  }
}

class EpisodesWidget extends StatelessWidget {
  const EpisodesWidget({
    super.key,
    required this.episodeProvider,
    required this.scrollController,
    required this.isLoading,
  });

  final EpisodeProvider episodeProvider;
  final ScrollController scrollController;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemCount: isLoading
          ? episodeProvider.episodes.length + 2
          : episodeProvider.episodes.length,
      itemBuilder: (context, index) {
        if (index < episodeProvider.episodes.length) {
          final episode = episodeProvider.episodes[index];

          return Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: CupertinoColors.systemGrey6,
              borderRadius: BorderRadius.circular(10),
            ),
            child: CupertinoListTile(
              title: Text(episode.name ?? ''),
              subtitle: Text(episode.episode ?? ''),
              trailing: Text(episode.airDate ?? ''),
              leading: const Icon(
                CupertinoIcons.tv,
                color: CupertinoColors.systemGrey,
              ),
            ),
          );
        } else {
          return const CupertinoActivityIndicator();
        }
      },
    );
  }
}
