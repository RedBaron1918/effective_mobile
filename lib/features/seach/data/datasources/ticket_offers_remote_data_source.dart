import 'dart:convert';
import 'package:effective_mobile/core/api_list.dart';
import 'package:effective_mobile/features/seach/domain/entities/ticket_entity.dart';
import 'package:effective_mobile/features/seach/domain/entities/ticket_offer_entity.dart';
import 'package:http/http.dart' as http;

final class TicketOfferRemoteDataSource {
  final http.Client client;
  TicketOfferRemoteDataSource({required this.client});
  Future<List<TicketOfferEntity>> getTicketOffers() async {
    final response = await client.get(
      Uri.parse(ApiList.ticketOffers),
    );

    if (response.statusCode == 200) {
      List<dynamic> list = json.decode(response.body)['tickets_offers'];
      return list.map((item) => TicketOfferEntity.fromJson(item)).toList();
    } else {
      throw 'Response error with status code: ${response.statusCode}';
    }
  }

  Future<List<TicketEntity>> getTickets() async {
    final response = await client.get(
      Uri.parse(ApiList.tickets),
    );

    if (response.statusCode == 200) {
      List<dynamic> list = json.decode(response.body)['tickets'];
      return list.map((item) => TicketEntity.fromJson(item)).toList();
    } else {
      throw 'Response error with status code: ${response.statusCode}';
    }
  }
}
