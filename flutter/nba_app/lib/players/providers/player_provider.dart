import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nba_app/players/model/player_model.dart';
import 'package:nba_app/players/service/player_service.dart';

part 'player_provider.freezed.dart';

/// Player provider
final playerProvider = StateNotifierProvider<PlayerNotifier, PlayerState>(
  (ref) => PlayerNotifier(),
);

/// StateNotifier for the player provider
class PlayerNotifier extends StateNotifier<PlayerState> {
  PlayerNotifier()
      : super(
          PlayerState(player: PlayersModel(player: [])),
        );

  /// load all players
  loadPlayers() async {
    state = state.copyWith(isLoading: true);
    final playersResponse = await PlayerService().getAllPlayers();

    final players = PlayersModel.fromJson(playersResponse);
    state = state.copyWith(player: players, isLoading: false);
  }

  /// load players by search
  /// [search] is the search query
  loadSearchPlayers(String name) async {
    state = state.copyWith(isLoading: true);
    final playersResponse = await PlayerService().getPlayersBySearch(name);

    final players = PlayersModel.fromJson(playersResponse);
    state = state.copyWith(player: players, isLoading: false);
  }
}

/// State of the news provider
@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    @Default(true) bool isLoading,
    required PlayersModel player,
  }) = _PlayerState;

  const PlayerState._();
}
