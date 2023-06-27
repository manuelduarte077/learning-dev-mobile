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
  final scrollController = ScrollController();
  bool isLoading = false;
  int page = 1;

  @override
  void initState() {
    super.initState();
    final apiProvider = Provider.of<ApiProvider>(context, listen: false);
    apiProvider.getCharacteres(page);

    scrollController.addListener(() async {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        setState(() {
          isLoading = true;
        });

        page++;
        await apiProvider.getCharacteres(page);

        setState(() {
          isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);

    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Characters'),
            border: Border(
              bottom: BorderSide(
                color: CupertinoColors.systemGrey,
                width: 0.5,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                if (apiProvider.characters.isEmpty)
                  const Center(child: CupertinoActivityIndicator())
                else
                  RickMortyWidget(
                    apiProvider: apiProvider,
                    isLoading: isLoading,
                    scrollController: scrollController,
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RickMortyWidget extends StatelessWidget {
  const RickMortyWidget({
    super.key,
    required this.apiProvider,
    required this.scrollController,
    required this.isLoading,
  });

  final ApiProvider apiProvider;
  final ScrollController scrollController;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16),
      child: Column(
        children: [
          const SizedBox(height: 16),
          const CupertinoSearchTextField(placeholder: 'Search'),
          const SizedBox(height: 16),
          ListView.builder(
            controller: scrollController,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: isLoading
                ? apiProvider.characters.length + 2
                : apiProvider.characters.length,
            itemBuilder: (context, index) {
              if (index < apiProvider.characters.length) {
                final character = apiProvider.characters[index];

                return GestureDetector(
                  onTap: () {
                    context.push('/character', extra: character);
                  },
                  child: Container(
                    height: 120,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Hero(
                          tag: character.id ?? '',
                          child: FadeInImage.assetNetwork(
                            placeholder: 'assets/images/placeholder.gif',
                            image: character.image ?? '',
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Text(
                                character.name ?? '',
                                style: const TextStyle(
                                  color: CupertinoColors.black,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                character.gender ?? '',
                                style: const TextStyle(
                                  color: CupertinoColors.systemGrey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 100,
                          height: 120,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: character.status!.contains('Alive')
                                  ? CupertinoColors.activeGreen
                                  : CupertinoColors.systemRed,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                character.status ?? '',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return const CupertinoActivityIndicator();
              }
            },
          ),
        ],
      ),
    );
  }
}
