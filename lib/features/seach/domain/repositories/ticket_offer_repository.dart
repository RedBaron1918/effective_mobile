import 'package:effective_mobile/features/seach/domain/entities/ticket_entity.dart';
import 'package:effective_mobile/features/seach/domain/entities/ticket_offer_entity.dart';

abstract class TicketOfferRepository {
  Future<List<TicketOfferEntity>> getTicketOffers();
  Future<List<TicketEntity>> getTickets();
}
