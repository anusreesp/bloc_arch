//----------------------
//----------------------
//-------------------------- Usecases are used to request for data from APIs/Local DB------------------------------
//----------------------

import 'package:bloc_clean_arch/data/repositories/post_repo.dart';
import 'package:bloc_clean_arch/domain/entities/post_entity.dart';
import 'package:bloc_clean_arch/domain/repositories/post_repo.dart';

class PostUseCase {
  PostRepo postRepo = PostRepoImpl();
  Future<List<PostEntity>> getPostData() async {
    final posts = await postRepo.getPostDataSouce();

    return posts;
  }
}
