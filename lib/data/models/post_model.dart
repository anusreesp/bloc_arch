import 'package:bloc_clean_arch/domain/entities/post_entity.dart';

// class PostModel extends PostEntity {
//   const PostModel(
//       {required super.name,
//       required super.id,
//       required super.type,
//       required super.status});

//   factory PostModel.fromJson(Map<String, dynamic> json) {
//     return PostModel(
//         name: json['Name'],
//         id: json['OrderID'],
//         type: json['HCType'],
//         status: json['RideStatus']);
//   }
// }

class PostModel extends PostEntity {
  const PostModel(
      {required super.firstname,
      required super.id,
      required super.type,
      required super.status});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
        firstname: json['firstname'],
        id: json['id'],
        // type: json['HCType'],
        type: json['company']['name'],
        status: json['company']['bs']);
  }
}
