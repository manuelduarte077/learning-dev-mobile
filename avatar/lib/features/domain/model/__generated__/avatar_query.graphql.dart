import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$AvatarCharacters {
  Query$AvatarCharacters({
    this.allCharacters,
    this.$__typename = 'Query',
  });

  factory Query$AvatarCharacters.fromJson(Map<String, dynamic> json) {
    final l$allCharacters = json['allCharacters'];
    final l$$__typename = json['__typename'];
    return Query$AvatarCharacters(
      allCharacters: (l$allCharacters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$AvatarCharacters$allCharacters.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$AvatarCharacters$allCharacters?>? allCharacters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allCharacters = allCharacters;
    _resultData['allCharacters'] =
        l$allCharacters?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allCharacters = allCharacters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$allCharacters == null
          ? null
          : Object.hashAll(l$allCharacters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AvatarCharacters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allCharacters = allCharacters;
    final lOther$allCharacters = other.allCharacters;
    if (l$allCharacters != null && lOther$allCharacters != null) {
      if (l$allCharacters.length != lOther$allCharacters.length) {
        return false;
      }
      for (int i = 0; i < l$allCharacters.length; i++) {
        final l$allCharacters$entry = l$allCharacters[i];
        final lOther$allCharacters$entry = lOther$allCharacters[i];
        if (l$allCharacters$entry != lOther$allCharacters$entry) {
          return false;
        }
      }
    } else if (l$allCharacters != lOther$allCharacters) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AvatarCharacters on Query$AvatarCharacters {
  CopyWith$Query$AvatarCharacters<Query$AvatarCharacters> get copyWith =>
      CopyWith$Query$AvatarCharacters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AvatarCharacters<TRes> {
  factory CopyWith$Query$AvatarCharacters(
    Query$AvatarCharacters instance,
    TRes Function(Query$AvatarCharacters) then,
  ) = _CopyWithImpl$Query$AvatarCharacters;

  factory CopyWith$Query$AvatarCharacters.stub(TRes res) =
      _CopyWithStubImpl$Query$AvatarCharacters;

  TRes call({
    List<Query$AvatarCharacters$allCharacters?>? allCharacters,
    String? $__typename,
  });
  TRes allCharacters(
      Iterable<Query$AvatarCharacters$allCharacters?>? Function(
              Iterable<
                  CopyWith$Query$AvatarCharacters$allCharacters<
                      Query$AvatarCharacters$allCharacters>?>?)
          _fn);
}

class _CopyWithImpl$Query$AvatarCharacters<TRes>
    implements CopyWith$Query$AvatarCharacters<TRes> {
  _CopyWithImpl$Query$AvatarCharacters(
    this._instance,
    this._then,
  );

  final Query$AvatarCharacters _instance;

  final TRes Function(Query$AvatarCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allCharacters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AvatarCharacters(
        allCharacters: allCharacters == _undefined
            ? _instance.allCharacters
            : (allCharacters as List<Query$AvatarCharacters$allCharacters?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes allCharacters(
          Iterable<Query$AvatarCharacters$allCharacters?>? Function(
                  Iterable<
                      CopyWith$Query$AvatarCharacters$allCharacters<
                          Query$AvatarCharacters$allCharacters>?>?)
              _fn) =>
      call(
          allCharacters: _fn(_instance.allCharacters?.map((e) => e == null
              ? null
              : CopyWith$Query$AvatarCharacters$allCharacters(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$AvatarCharacters<TRes>
    implements CopyWith$Query$AvatarCharacters<TRes> {
  _CopyWithStubImpl$Query$AvatarCharacters(this._res);

  TRes _res;

  call({
    List<Query$AvatarCharacters$allCharacters?>? allCharacters,
    String? $__typename,
  }) =>
      _res;
  allCharacters(_fn) => _res;
}

const documentNodeQueryAvatarCharacters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AvatarCharacters'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allCharacters'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$AvatarCharacters _parserFn$Query$AvatarCharacters(
        Map<String, dynamic> data) =>
    Query$AvatarCharacters.fromJson(data);
typedef OnQueryComplete$Query$AvatarCharacters = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$AvatarCharacters?,
);

class Options$Query$AvatarCharacters
    extends graphql.QueryOptions<Query$AvatarCharacters> {
  Options$Query$AvatarCharacters({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AvatarCharacters? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$AvatarCharacters? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$AvatarCharacters(data),
                  ),
          onError: onError,
          document: documentNodeQueryAvatarCharacters,
          parserFn: _parserFn$Query$AvatarCharacters,
        );

  final OnQueryComplete$Query$AvatarCharacters? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$AvatarCharacters
    extends graphql.WatchQueryOptions<Query$AvatarCharacters> {
  WatchOptions$Query$AvatarCharacters({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AvatarCharacters? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryAvatarCharacters,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$AvatarCharacters,
        );
}

class FetchMoreOptions$Query$AvatarCharacters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$AvatarCharacters(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryAvatarCharacters,
        );
}

extension ClientExtension$Query$AvatarCharacters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$AvatarCharacters>> query$AvatarCharacters(
          [Options$Query$AvatarCharacters? options]) async =>
      await this.query(options ?? Options$Query$AvatarCharacters());
  graphql.ObservableQuery<Query$AvatarCharacters> watchQuery$AvatarCharacters(
          [WatchOptions$Query$AvatarCharacters? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$AvatarCharacters());
  void writeQuery$AvatarCharacters({
    required Query$AvatarCharacters data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryAvatarCharacters)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$AvatarCharacters? readQuery$AvatarCharacters({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryAvatarCharacters)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$AvatarCharacters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$AvatarCharacters>
    useQuery$AvatarCharacters([Options$Query$AvatarCharacters? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$AvatarCharacters());
graphql.ObservableQuery<Query$AvatarCharacters> useWatchQuery$AvatarCharacters(
        [WatchOptions$Query$AvatarCharacters? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$AvatarCharacters());

class Query$AvatarCharacters$Widget
    extends graphql_flutter.Query<Query$AvatarCharacters> {
  Query$AvatarCharacters$Widget({
    widgets.Key? key,
    Options$Query$AvatarCharacters? options,
    required graphql_flutter.QueryBuilder<Query$AvatarCharacters> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$AvatarCharacters(),
          builder: builder,
        );
}

class Query$AvatarCharacters$allCharacters {
  Query$AvatarCharacters$allCharacters({
    this.name,
    required this.image,
    required this.bio,
    this.$__typename = 'Character',
  });

  factory Query$AvatarCharacters$allCharacters.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$image = json['image'];
    final l$bio = json['bio'];
    final l$$__typename = json['__typename'];
    return Query$AvatarCharacters$allCharacters(
      name: (l$name as String?),
      image: (l$image as String),
      bio: (l$bio as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String image;

  final String bio;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$bio = bio;
    _resultData['bio'] = l$bio;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$image = image;
    final l$bio = bio;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$image,
      l$bio,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AvatarCharacters$allCharacters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AvatarCharacters$allCharacters
    on Query$AvatarCharacters$allCharacters {
  CopyWith$Query$AvatarCharacters$allCharacters<
          Query$AvatarCharacters$allCharacters>
      get copyWith => CopyWith$Query$AvatarCharacters$allCharacters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AvatarCharacters$allCharacters<TRes> {
  factory CopyWith$Query$AvatarCharacters$allCharacters(
    Query$AvatarCharacters$allCharacters instance,
    TRes Function(Query$AvatarCharacters$allCharacters) then,
  ) = _CopyWithImpl$Query$AvatarCharacters$allCharacters;

  factory CopyWith$Query$AvatarCharacters$allCharacters.stub(TRes res) =
      _CopyWithStubImpl$Query$AvatarCharacters$allCharacters;

  TRes call({
    String? name,
    String? image,
    String? bio,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AvatarCharacters$allCharacters<TRes>
    implements CopyWith$Query$AvatarCharacters$allCharacters<TRes> {
  _CopyWithImpl$Query$AvatarCharacters$allCharacters(
    this._instance,
    this._then,
  );

  final Query$AvatarCharacters$allCharacters _instance;

  final TRes Function(Query$AvatarCharacters$allCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? image = _undefined,
    Object? bio = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AvatarCharacters$allCharacters(
        name: name == _undefined ? _instance.name : (name as String?),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        bio: bio == _undefined || bio == null ? _instance.bio : (bio as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$AvatarCharacters$allCharacters<TRes>
    implements CopyWith$Query$AvatarCharacters$allCharacters<TRes> {
  _CopyWithStubImpl$Query$AvatarCharacters$allCharacters(this._res);

  TRes _res;

  call({
    String? name,
    String? image,
    String? bio,
    String? $__typename,
  }) =>
      _res;
}
