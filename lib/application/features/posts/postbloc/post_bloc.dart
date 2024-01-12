import 'package:bloc/bloc.dart';
import 'package:bloc_clean_arch/domain/entities/post_entity.dart';
import 'package:bloc_clean_arch/domain/usecases/post_usecase.dart';
import 'package:bloc_clean_arch/sample.dart';
import 'package:equatable/equatable.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<PostRequestedEvent>((event, emit) async {
      try {
        emit(PostStateLoading());
        final posts = await PostUseCase().getPostData();

        await Future.delayed(
            const Duration(seconds: 2), () => emit(PostStateLoaded(posts)));
      } catch (e) {
        emit(PostStateError(e.toString()));
      }
    });
  }
}
