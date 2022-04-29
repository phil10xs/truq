import 'package:dio/dio.dart';

import 'package:dartz/dartz.dart';
import 'package:truq_assesment/core/failure/failure.dart';
import 'package:truq_assesment/core/network/network_info.dart';

import '../../domain/repository/repo.dart';
import '../datasource/remote/remote.dart';

class RepositoryImpl implements Repository {
  RepositoryImpl({
    required this.networkInfo,
    required this.remoteDatasource,
  });

  final RemoteDatasource remoteDatasource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, List<dynamic>>> getData() async {
    if (await networkInfo.isConnected()) {
      try {
        var data = await remoteDatasource.getData();
        print('$data repoooooooo');
        return Right(data);
      } on DioError catch (e) {
        print(e.toString());
        if (e.type == DioErrorType.receiveTimeout) return Left(TimeOutError());
        if (e.type == DioErrorType.connectTimeout) return Left(TimeOutError());
        return Left(SomethingWentWrong());
      } catch (e) {
        print(e.toString());
        return Left(UnexpectedError());
      }
    } else {
      return Left(ServerException());
    }
  }
}
