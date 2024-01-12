import 'package:equatable/equatable.dart';

class PostEntity extends Equatable {
  final String firstname, type, status;
  final int id;

  const PostEntity({
    required this.firstname,
    required this.id,
    required this.type,
    required this.status,
  });

  @override
  List<Object?> get props => [firstname, id, type, status];
}
