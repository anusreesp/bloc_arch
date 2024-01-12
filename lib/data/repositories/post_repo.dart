import 'package:bloc_clean_arch/data/datasources/post_remote_datasource.dart';
import 'package:bloc_clean_arch/domain/entities/post_entity.dart';
import 'package:bloc_clean_arch/domain/repositories/post_repo.dart';

class PostRepoImpl extends PostRepo {
  PostRemoteDataSource postRemoteDataSource = PostRemoteDataSourceImpl();
  @override
  Future<List<PostEntity>> getPostDataSouce() {
    final posts = postRemoteDataSource.getPostFromApi();
    return posts;
  }
}
