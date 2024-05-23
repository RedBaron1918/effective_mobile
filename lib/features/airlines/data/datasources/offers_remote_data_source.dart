import 'dart:convert';
import 'package:effective_mobile/core/api_list.dart';
import 'package:effective_mobile/features/airlines/domain/entities/offers_entity.dart';
import 'package:http/http.dart' as http;

final class OffersRemoteDataSource {
  final http.Client client;
  OffersRemoteDataSource({required this.client});
  Future<List<OffersEntity>> getOffers() async {
    final response = await client.get(
      Uri.parse(ApiList.homePage),
    );

    if (response.statusCode == 200) {
      List<dynamic> list = json.decode(response.body)['offers'];
      return list.map((item) => OffersEntity.fromJson(item)).toList();
    } else {
      throw 'Response error with status code: ${response.statusCode}';
    }
  }
}
