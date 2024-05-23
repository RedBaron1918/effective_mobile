import 'package:effective_mobile/features/airlines/domain/entities/offers_entity.dart';
import 'package:effective_mobile/features/airlines/domain/repositories/offers_repository.dart';

class GetOffersUseCase {
  const GetOffersUseCase(this.offersRepository);
  final OffersRepository offersRepository;

  Future<List<OffersEntity>> call() {
    return offersRepository.getOffers();
  }
}
