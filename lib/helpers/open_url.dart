import 'package:url_launcher/url_launcher.dart';

class OpenUrl {
  Future<void> launchTheUrl(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
