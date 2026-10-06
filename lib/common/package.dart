import 'dart:io';

import 'package:package_info_plus/package_info_plus.dart';

/// Default User-Agent: "FlClash X/v0.4.7.8 core/v1.19.32 Platform/android".
///
/// [appVersion] is the display version (the exact tag on release builds,
/// pubspec version + `-pre` on local ones); [coreVersion] is the embedded core
/// version (already `v`-prefixed), surfaced as a `core/` token.
String buildUa({required String appVersion, String? coreVersion}) => [
      "FlClash X/v$appVersion",
      if (coreVersion != null && coreVersion.isNotEmpty) "core/$coreVersion",
      "Platform/${Platform.operatingSystem}",
    ].join(" ");

/// Sentinel for the User-Agent option that names the core.
///
/// The UA carries live versions, so a literal option string would freeze at
/// whatever it was written with and go stale on the next update. This marker is
/// what gets stored instead, and it is resolved at send time.
const uaPrizrakMarker = '__flclashx_prizrak__';

/// The default UA with the fork's core named instead of left anonymous - which
/// is the one thing the plain UA cannot tell a server, since the core reports
/// itself as plain mihomo.
String buildPrizrakUa({required String appVersion, String? coreVersion}) =>
    buildUa(appVersion: appVersion, coreVersion: coreVersion).replaceFirst(
      'FlClash X/',
      'FlClash X with Prizrak-Core/',
    );

extension PackageInfoExtension on PackageInfo {
  String ua({required String appVersion, String? coreVersion}) =>
      buildUa(appVersion: appVersion, coreVersion: coreVersion);

  String prizrakUa({required String appVersion, String? coreVersion}) =>
      buildPrizrakUa(appVersion: appVersion, coreVersion: coreVersion);
}
