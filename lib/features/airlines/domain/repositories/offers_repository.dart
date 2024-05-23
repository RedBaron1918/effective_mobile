import 'package:effective_mobile/features/airlines/domain/entities/offers_entity.dart';

abstract class OffersRepository {
  Future<List<OffersEntity>> getOffers();
}
