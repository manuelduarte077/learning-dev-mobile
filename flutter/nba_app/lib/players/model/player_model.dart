import 'dart:convert';

PlayersModel playersModelFromJson(String str) =>
    PlayersModel.fromJson(json.decode(str));

String playersModelToJson(PlayersModel player) => json.encode(player.toJson());

class PlayersModel {
  List<Player>? player;
  Meta? meta;

  PlayersModel({
    this.player,
    this.meta,
  });

  factory PlayersModel.fromJson(Map<String, dynamic> json) => PlayersModel(
        player: json['player'] == null
            ? []
            : List<Player>.from(json['player']!.map((x) => Player.fromJson(x))),
        meta: json['meta'] == null ? null : Meta.fromJson(json['meta']),
      );

  Map<String, dynamic> toJson() => {
        'player': player == null
            ? []
            : List<dynamic>.from(player!.map((x) => x.toJson())),
        'meta': meta?.toJson(),
      };
}

class Player {
  int? id;
  String? firstName;
  int? heightFeet;
  int? heightInches;
  String? lastName;
  String? position;
  Team? team;
  int? weightPounds;

  Player({
    this.id,
    this.firstName,
    this.heightFeet,
    this.heightInches,
    this.lastName,
    this.position,
    this.team,
    this.weightPounds,
  });

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        id: json['id'],
        firstName: json['first_name'],
        heightFeet: json['height_feet'],
        heightInches: json['height_inches'],
        lastName: json['last_name'],
        position: json['position'],
        team: json['team'] == null ? null : Team.fromJson(json['team']),
        weightPounds: json['weight_pounds'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'height_feet': heightFeet,
        'height_inches': heightInches,
        'last_name': lastName,
        'position': position,
        'team': team?.toJson(),
        'weight_pounds': weightPounds,
      };
}

class Team {
  int? id;
  String? abbreviation;
  String? city;
  String? conference;
  String? division;
  String? fullName;
  String? name;

  Team({
    this.id,
    this.abbreviation,
    this.city,
    this.conference,
    this.division,
    this.fullName,
    this.name,
  });

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json['id'],
        abbreviation: json['abbreviation'],
        city: json['city'],
        conference: json['conference'],
        division: json['division'],
        fullName: json['full_name'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'abbreviation': abbreviation,
        'city': city,
        'conference': conference,
        'division': division,
        'full_name': fullName,
        'name': name,
      };
}

class Meta {
  int? totalPages;
  int? currentPage;
  int? nextPage;
  int? perPage;
  int? totalCount;

  Meta({
    this.totalPages,
    this.currentPage,
    this.nextPage,
    this.perPage,
    this.totalCount,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        totalPages: json['total_pages'],
        currentPage: json['current_page'],
        nextPage: json['next_page'],
        perPage: json['per_page'],
        totalCount: json['total_count'],
      );

  Map<String, dynamic> toJson() => {
        'total_pages': totalPages,
        'current_page': currentPage,
        'next_page': nextPage,
        'per_page': perPage,
        'total_count': totalCount,
      };
}
