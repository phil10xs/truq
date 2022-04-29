import 'package:dartz/dartz.dart';
import 'package:truq_assesment/core/failure/failure.dart';

abstract class Repository {
  Future<Either<Failure, List<dynamic>>> getData();
}
