import 'package:darmbank/app/provider/auth_provider.dart';

class AuthRepository {
  final AuthApiClient apiClient = AuthApiClient();

    Future<void> signUp({required String email, required String password}) async {
    return apiClient.signUp(email, password);
  }

  Future<void> signIn({required String email, required String password}) async {
    return apiClient.signIn(email, password);
  }


}
