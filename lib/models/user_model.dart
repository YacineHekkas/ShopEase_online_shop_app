import 'package:shopease_ecom_app/data/const/constants.dart';

class UserModel {
  String id;
  String name;
  String email;
  String profilePic;
  String location;
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.profilePic,
    required this.location
  });
}

UserModel dummyUser = UserModel(
  id: '1',
  name: 'Jhone Arent',
  email: '',
  profilePic: AppAssets.kProfilePic,
  location: 'Brooklyn',
);
