import 'package:architecture_challenge/model/post.dart';
import 'package:architecture_challenge/provider/rest_provider.dart';

abstract class Repository {
  Future<List<Post>> getPostList();
}

class RepositoryImp extends Repository {
  final RestProvider _provider;

  RepositoryImp(this._provider);

  @override
  Future<List<Post>> getPostList() => _provider.getPostList();
}
