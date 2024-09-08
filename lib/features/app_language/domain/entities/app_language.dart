sealed class AppLanguage {
  final String languageCode;

  const AppLanguage(this.languageCode);
}

final class Spanish extends AppLanguage {
  const Spanish() : super('es');
}

final class English extends AppLanguage {
  const English() : super('en');
}
