enum EApiType {
  development(label: 'Development', url: 'http://10.0.2.2:3000/api'),
  staging(label: 'Staging', url: 'https://api-beta.pasarsafe.com/mobile-service/v1'),
  production(label: 'Production', url: 'https://api-app.pasarsafe.com/mobile-service/v1');

  const EApiType({required this.label, required this.url});
  final String label, url;
}