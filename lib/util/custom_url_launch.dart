// Copyright (c) 2021 Kin Wa Lam
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:url_launcher/url_launcher.dart';

void customUrlLaunch(String url) async {
  final launchNative = await launchUrl(Uri.parse(url),
      mode: LaunchMode.externalNonBrowserApplication);
  if (!launchNative) {
    await launchUrl(Uri.parse(url), mode: LaunchMode.inAppWebView);
  }
}
