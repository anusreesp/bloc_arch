part of 'post_bloc.dart';

sealed class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

final class PostInitial extends PostState {}

final class PostStateLoading extends PostState {}

final class PostStateLoaded extends PostState {
  // final List<Map<String, dynamic>> post;
  final List<PostEntity> posts;
  const PostStateLoaded(this.posts);

  @override
  List<Object> get props => [];
}

final class PostStateError extends PostState {
  final String err;
  const PostStateError(this.err);
}
