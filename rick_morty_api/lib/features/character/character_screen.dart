import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty_api/providers/api_provider.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  void initState() {
    super.initState();
    final apiProvider = Provider.of<ApiProvider>(context, listen: false);
    apiProvider.getCharacteres();
  }

  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);

    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Characters'),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                if (apiProvider.characters.isEmpty)
                  const Center(child: CupertinoActivityIndicator())
                else
                  RickMortyWidget(apiProvider: apiProvider),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RickMortyWidget extends StatelessWidget {
  const RickMortyWidget({super.key, required this.apiProvider});

  final ApiProvider apiProvider;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          const CupertinoSearchTextField(
            placeholder: 'Search',
          ),
          const SizedBox(height: 16),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: apiProvider.characters.length,
            itemBuilder: (context, index) {
              final character = apiProvider.characters[index];

              return GestureDetector(
                onTap: () {
                  context.push('/character');
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: CupertinoColors.activeGreen,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const FlutterLogo(size: 80),
                      const SizedBox(width: 10),

                      Column(
                        children: [
                          Text(
                            character.name ?? '',
                            style: const TextStyle(
                              color: CupertinoColors.black,
                            ),
                          ),
                          Text(
                            character.gender ?? '',
                            style: const TextStyle(
                              color: CupertinoColors.black,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 80,
                        height: 100,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: CupertinoColors.activeBlue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              character.status ?? '',
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // FadeInImage.assetNetwork(
                      //   placeholder: 'assets/images/placeholder.png',
                      //   image: character.image ?? '',
                      // ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
