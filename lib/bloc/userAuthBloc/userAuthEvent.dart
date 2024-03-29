import 'package:equatable/equatable.dart';

import 'package:meta/meta.dart';
import 'package:retaurant_app/model/userLogin.dart';

//Uer auth events these events are triggered by User From UI
abstract class UserAuthEvent extends Equatable {
  const UserAuthEvent();
  @override
  List<Object> get props => [];
}

//Auth starting point
class AuthStarted extends UserAuthEvent {}

//When user Logged in
class AuthLoggedIn extends UserAuthEvent {
  final UserLogin userLogin;

  const AuthLoggedIn({@required this.userLogin});

  //comparison of two objects if they are same or not
  @override
  List<Object> get props => [userLogin];

  @override
  String toString() => 'AuthLoggedIn {token:${userLogin.data.customerName}}';
}

//When we need to log out the user we will use this event
class AuthLoggedOut extends UserAuthEvent {}
