import 'package:effective_mobile/features/airlines/data/datasources/offers_remote_data_source.dart';
import 'package:effective_mobile/features/airlines/domain/entities/offers_entity.dart';
import 'package:effective_mobile/features/airlines/domain/repositories/offers_repository.dart';

final class OffersRepositoryImpl implements OffersRepository {
  final OffersRemoteDataSource _dataSource;

  OffersRepositoryImpl({required OffersRemoteDataSource dataSource})
      : _dataSource = dataSource;
  @override
  Future<List<OffersEntity>> getOffers() {
    return _dataSource.getOffers();
  }
}
