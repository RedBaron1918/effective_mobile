import 'package:effective_mobile/features/seach/data/datasources/ticket_offers_remote_data_source.dart';
import 'package:effective_mobile/features/seach/domain/entities/ticket_entity.dart';
import 'package:effective_mobile/features/seach/domain/entities/ticket_offer_entity.dart';
import 'package:effective_mobile/features/seach/domain/repositories/ticket_offer_repository.dart';

final class TicketOfferRepositoryImpl implements TicketOfferRepository {
  final TicketOfferRemoteDataSource _dataSource;

  TicketOfferRepositoryImpl({required TicketOfferRemoteDataSource dataSource})
      : _dataSource = dataSource;
  @override
  Future<List<TicketOfferEntity>> getTicketOffers() {
    return _dataSource.getTicketOffers();
  }

  @override
  Future<List<TicketEntity>> getTickets() {
    return _dataSource.getTickets();
  }
}
