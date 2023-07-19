import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty_api/features/character/provider/api_provider.dart';

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
          CupertinoSearchTextField(
            placeholder: 'Search',
            onChanged: (value) {
              apiProvider.searchCharacter(value);
            },
            onSubmitted: (value) {
              apiProvider.searchCharacter(value);
            },
            autocorrect: false,
          ),
          const SizedBox(height: 16),
          ListView.builder(
            controller: scrollController,
            padding: const EdgeInsets.only(bottom: 100),
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
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: character.status!.contains('Alive')
                                  ? CupertinoColors.activeGreen
                                  : CupertinoColors.destructiveRed,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    character.name ?? '',
                                    style: const TextStyle(
                                      color: CupertinoColors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    character.gender ?? '',
                                    style: const TextStyle(
                                      color: CupertinoColors.darkBackgroundGray,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
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
