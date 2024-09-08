import 'package:fin_dall/features/profile/data/models/profile_model.dart';
import 'package:fin_dall/features/profile/domain/entities/profile.dart';

class ProfileMapper {
  static Profile formProfileModel(ProfileModel profileModel) {
    return Profile(
      name: profileModel.name,
      photoUrl: profileModel.photoUrl,
      email: profileModel.email,
      id: profileModel.id,
    );
  }

  static ProfileModel toProfileModel(Profile profile) {
    return ProfileModel(
      name: profile.name,
      photoUrl: profile.photoUrl,
      email: profile.email,
      id: profile.id,
    );
  }
}
