import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String title;
  final String message;
  const Failure({this.title = 'Error', this.message = 'Um erro inesperado aconteceu'});

  @override
  List<Object> get props => [title, message];
}

class NoConnectionFailure extends Failure {
  static String get defaultTitle => 'Problema de conexão';
  static String get defaultMessage => 'Ops, parece que estamos sem conexão!';
  NoConnectionFailure({String? message}) : super(message: message ?? defaultMessage, title: defaultTitle);
}

class FetchErrorFailure extends Failure {
  static String get defaultTitle => 'Problema com a requisição';
  static String get defaultMessage => 'Ops, parece que aconteceu algo com sua request!';
  FetchErrorFailure({String? message}) : super(message: message ?? defaultMessage, title: defaultTitle);
}
