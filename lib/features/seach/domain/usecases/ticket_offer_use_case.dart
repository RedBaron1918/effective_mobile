import 'package:effective_mobile/features/seach/domain/entities/ticket_entity.dart';
import 'package:effective_mobile/features/seach/domain/entities/ticket_offer_entity.dart';
import 'package:effective_mobile/features/seach/domain/repositories/ticket_offer_repository.dart';

class GetTicketOffersUseCase {
  const GetTicketOffersUseCase(this.ticketOfferRepository);
  final TicketOfferRepository ticketOfferRepository;

  Future<List<TicketOfferEntity>> call() {
    return ticketOfferRepository.getTicketOffers();
  }
}

class GetTicketsUseCase {
  const GetTicketsUseCase(this.ticketOfferRepository);
  final TicketOfferRepository ticketOfferRepository;

  Future<List<TicketEntity>> call() {
    return ticketOfferRepository.getTickets();
  }
}
