import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  static launchLink(String link) {
    final url = Uri.parse(link);
    launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );
  }
}
