import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';

abstract class UsecaseOfFuture<Output, Input> {
  Future<Either<Failure, Output>> call(Input params);
}

abstract class UsecaseOfStream<Output, Input> {
  Stream<Either<Failure, Output>> call(Input params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
