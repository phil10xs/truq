import 'package:dartz/dartz.dart';

import 'package:truq_assesment/core/failure/failure.dart';
import 'package:truq_assesment/features/dashboard/domain/repository/repo.dart';

import '../../../../core/usecases/usecases.dart';

class GetDataUsecase extends Usecase<void, NoParams> {
  GetDataUsecase({
    required this.repository,
  });

  final Repository repository;

  @override
  Future<Either<Failure, List<dynamic>>> call(NoParams params) async =>
      await repository.getData();
}
