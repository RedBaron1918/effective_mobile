import 'package:effective_mobile/core/local_storage/local_storage_impl.dart';

class GetTextField {
  const GetTextField(this.localStorage);

  final LocalStorage localStorage;

  Future<String> call() async =>
      await localStorage.get<String>(CacheKeys.textField) ?? '';
}

class SetTextField {
  const SetTextField(this.localStorage);

  final LocalStorage localStorage;

  Future<void> call(String text) =>
      localStorage.store<String>(CacheKeys.textField, text);
}

class DelteTextField {
  const DelteTextField(this.localStorage);

  final LocalStorage localStorage;

  Future<void> call() => localStorage.delete(CacheKeys.textField);
}
