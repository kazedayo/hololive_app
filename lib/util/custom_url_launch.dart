// Copyright (c) 2021 Kin Wa Lam
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:url_launcher/url_launcher.dart';

void customUrlLaunch(String url) async {
  final launchNative =
      await launch(url, forceSafariVC: false, universalLinksOnly: true);
  if (!launchNative) {
    await launch(url, forceSafariVC: true);
  }
}
