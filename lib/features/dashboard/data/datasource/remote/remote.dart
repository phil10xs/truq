import 'package:dio/dio.dart';

abstract class RemoteDatasource {
  Future<List<dynamic>> getData();
}

class RemoteDatasourceImpl extends RemoteDatasource {
  RemoteDatasourceImpl({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<List<dynamic>> getData() async {
    var response = await dio.get(
      'https://storage.googleapis.com/ember-deploy.appspot.com/images/open-source.json',
    );

    return response.data['data'];
  }
}
