// Copyright (c) 2021 Kin Wa Lam
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:flutter/material.dart';
import 'package:hololive_app/util/custom_url_launch.dart';
import 'package:hololive_app/generated/l10n.dart';

class PopupMenu extends StatelessWidget {
  const PopupMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 0,
          child: ListTile(
            leading: const Icon(Icons.copyright),
            title: Text(S.of(context).copyright),
          ),
        ),
        PopupMenuItem(
          value: 1,
          child: ListTile(
            leading: const Icon(Icons.code_rounded),
            title: Text(S.of(context).source),
          ),
        ),
      ],
      onSelected: (value) {
        if (value == 0) {
          showLicensePage(
            applicationName: "HoloSchedule",
            context: context,
          );
        } else if (value == 1) {
          customUrlLaunch(
            'https://github.com/kazedayo/hololive_app',
          );
        }
      },
      icon: const Icon(Icons.more_vert_rounded),
    );
  }
}
