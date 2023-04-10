import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLClientService {
  static Future<GraphQLClient> createGraphQLClient() async {
    final HttpLink httpLink =
        HttpLink('https://api.sampleapis.com/avatar/graphql');

    final Link link = httpLink;

    return GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );
  }
}
