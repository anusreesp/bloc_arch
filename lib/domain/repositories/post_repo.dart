import 'package:bloc_clean_arch/domain/entities/post_entity.dart';

abstract class PostRepo {
  Future<List<PostEntity>> getPostDataSouce();
}
