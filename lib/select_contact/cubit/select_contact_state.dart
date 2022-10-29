import 'package:unreal_whatsapp/login/data/models/app_user.dart';
import 'package:unreal_whatsapp/select_contact/data/models/app_contact.dart';

abstract class SelectContactState {}

class SelectContactInitial extends SelectContactState {}

class SelectContactLoading extends SelectContactState {}

class SelectContactLoaded extends SelectContactState {
  SelectContactLoaded({required this.contacts});
  final List<AppContact> contacts;
}

class SelectContactSelected extends SelectContactState {
  SelectContactSelected({required this.user});
  final AppUser user;
}

class SelectContactCancle extends SelectContactState {}

class SelectContactError extends SelectContactState {
  SelectContactError({required this.message});
  final String message;
}
