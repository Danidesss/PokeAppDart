class Logger {
  final String appName;

  Logger({required this.appName});

  void log(String message) {
    final timeStamp = DateTime.now();

    print('$timeStamp [$appName] $message');
  }
}
