class AuthException implements Exception {
  static const Map<String, String> erros = {
    'CPF_EXISTS': 'Cpf já cadastrado.',
    'OPERATION_NOT_ALLOWED': 'Operação não permitida!',
    'TOO_MANY_ATTEMPTS_TRY_LATER':
        'Acesso bloqueado temporariamente. Tente mais tarde',
    'CPF_NOT_FOUND': 'Cpf não encontrado.',
    'INVALID_PASSWORD': 'Senha informada não confere.',
    'USER_DISABLED': 'A conta do usuário foi desabilitad.',
  };

  final String? key;
  AuthException(this.key);

  @override
  String toString() {
    return erros[key] ?? 'Ocorreu um erro no processo de autenticação';
  }
}
