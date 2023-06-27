import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty_api/features/character/model/character_model.dart';
import 'package:rick_morty_api/providers/api_provider.dart';

class CharacterDetailsScreen extends StatelessWidget {
  final Character character;

  const CharacterDetailsScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(character.name ?? ''),
        leading: CupertinoNavigationBarBackButton(
          onPressed: () {
            context.pop();
          },
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: size.height * 0.4,
            child: Hero(
              tag: character.id!,
              child: Image.network(
                character.image!,
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// ...
          Container(
            padding: const EdgeInsets.all(10),
            height: size.height * 0.14,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                cardData('Status', character.status ?? ''),
                cardData('Species', character.species ?? ''),
                cardData('Origin', character.origin?.name ?? ''),
              ],
            ),
          ),

          /// ...
          const Text(
            'Episodes',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: size.height * 0.02),
          EpisodesList(character: character, size: size),
        ],
      ),
    );
  }
}

Widget cardData(String text1, String text2) {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: CupertinoColors.systemGrey6,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(text1),
            Text(
              text2,
              style: const TextStyle(overflow: TextOverflow.ellipsis),
            )
          ],
        ),
      ),
    ),
  );
}

class EpisodesList extends StatefulWidget {
  const EpisodesList({super.key, required this.character, required this.size});

  final Character character;
  final Size size;

  @override
  State<EpisodesList> createState() => _EpisodesListState();
}

class _EpisodesListState extends State<EpisodesList> {
  @override
  void initState() {
    super.initState();

    final apiProvider = Provider.of<ApiProvider>(context, listen: false);
    apiProvider.getEpisodes(widget.character);
  }

  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);

    return SizedBox(
      height: widget.size.height * 0.4,
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        itemCount: apiProvider.episodes.length,
        itemBuilder: (context, index) {
          final episode = apiProvider.episodes[index];

          return Container(
            margin: const EdgeInsets.all(10),
            width: widget.size.width * 0.5,
            decoration: BoxDecoration(
              color: CupertinoColors.systemGrey6,
              borderRadius: BorderRadius.circular(10),
            ),
            child: CupertinoListTile(
              title: Text(episode.name ?? ''),
              subtitle: Text(episode.episode ?? ''),
              trailing: Text(episode.airDate ?? ''),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
