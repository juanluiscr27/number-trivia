import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../core/exceptions/failures.dart';
import '../../core/usecases/usecase.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> call({
    required number,
  }) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}

class Params extends Equatable {
  final int number;
  const Params({required this.number});

  @override
  List<Object?> get props => [number];
}
