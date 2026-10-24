// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'fr';

  static String m0(count, skipped) =>
      "${count} ├а ajouter, ${skipped} ignor├йs car d├йj├а pr├йsents";

  static String m1(detail) =>
      "Impossible dтАЩeffacer les donn├йes┬а: ${detail}";

  static String m2(code) =>
      "Windows a refus├й dтАЩex├йcuter FlClashCore.exe (erreur ${code}). Une strat├йgie de contr├┤le des applications, telle que Smart App Control ou AppLocker, bloque les programmes non sign├йs┬а; autorisez FlClash dans cette strat├йgie ou d├йsactivez-la, puis r├йessayez.";

  static String m3(name) =>
      "LтАЩapp nтАЩa pas r├йussi ├а finir de d├йmarrer deux fois de suite. Pour sortir de cette boucle, le profil ${name} a ├йt├й d├йs├йlectionn├й et la configuration automatique a ├йt├й ignor├йe. Vous pouvez le s├йlectionner de nouveau ├а tout moment.";

  static String m4(url) => "Cr├йer un profil ├а partir de ${url}┬а?";

  static String m5(count, label) =>
      "${Intl.plural(count, one: '1 r├иgle SUB-RULE a ├йt├й abandonn├йe, car les profils personnalis├йs ne prennent pas en charge les sous-r├иgles', other: '${label} r├иgles SUB-RULE ont ├йt├й abandonn├йes, car les profils personnalis├йs ne prennent pas en charge les sous-r├иgles')}";

  static String m6(message) =>
      "Le c┼Уur ne peut pas analyser ce proxy┬а: ${message}";

  static String m7(proxy, target) =>
      "${proxy} se connecte via ${target}, qui renvoie ├а ${proxy}┬а; la connexion boucle";

  static String m8(name) =>
      "Le nom ${name} est d├йj├а utilis├й par un autre proxy ou groupe de proxys";

  static String m9(path) =>
      "Les groupes de proxys se r├йf├йrencent mutuellement en boucle┬а: ${path}";

  static String m10(name) =>
      "Le repli si vide doit ├кtre un proxy, mais ${name} nтАЩexiste pas ou est un groupe de proxys";

  static String m11(name, message) =>
      "${name} nтАЩest pas une regex valide┬а: ${message}";

  static String m12(name) => "Le proxy de connexion ${name} nтАЩexiste pas";

  static String m13(names) =>
      "Ces fournisseurs de proxys nтАЩexistent pas┬а: ${names}";

  static String m14(names) =>
      "Ces proxys ou strat├йgies nтАЩexistent pas┬а: ${names}";

  static String m15(name) =>
      "${name} est un nom de strat├йgie int├йgr├й et ne peut pas ├кtre utilis├й ici";

  static String m16(count) =>
      "${count} ├йl├йments posent probl├иme, et lтАЩapplication de ce profil peut ├йchouer";

  static String m17(count) =>
      "${Intl.plural(count, one: 'il y a 1 jour', other: 'il y a ${count} jours')}";

  static String m18(count) =>
      "${Intl.plural(count, other: 'il y a ${count} j')}";

  static String m19(label) =>
      "Voulez-vous vraiment supprimer les ├йl├йments s├йlectionn├йs (${label})┬а?";

  static String m20(label) =>
      "Voulez-vous vraiment supprimer cet ├йl├йment (${label})┬а?";

  static String m21(label) => "D├йtails de ${label}";

  static String m22(name) =>
      "La connexion via ${name} renvoie au proxy qui lтАЩutilise┬а; la connexion a donc ├йt├й arr├кt├йe";

  static String m23(label) => "${label} ne peut pas ├кtre vide";

  static String m24(label) => "${label} existe d├йj├а";

  static String m25(count) => "${count} ├йl├йments en ├йchec";

  static String m26(label, message) => "${label}┬а: ${message}";

  static String m27(name) => "${name} est d├йj├а ├а jour";

  static String m28(name) => "${name} mis ├а jour";

  static String m29(count) =>
      "${Intl.plural(count, one: '1 groupe', other: '${count} groupes')}";

  static String m30(count) => "${count} expir├йs";

  static String m31(action) =>
      "D├йj├а utilis├й par ┬л┬а${action}┬а┬╗. LтАЩenregistrer le d├йplace ici.";

  static String m32(modifiers) =>
      "Incluez au moins lтАЩune de ces touches┬а: ${modifiers}";

  static String m33(count) =>
      "${Intl.plural(count, one: 'il y a 1 heure', other: 'il y a ${count} heures')}";

  static String m34(count) =>
      "${Intl.plural(count, other: 'il y a ${count} h')}";

  static String m35(target) => "${target} nтАЩest pas une strat├йgie valide";

  static String m36(proxyName) => "${proxyName} nтАЩest pas un proxy valide";

  static String m37(providerName) =>
      "${providerName} nтАЩest pas un fournisseur de proxys valide";

  static String m38(ruleSet) =>
      "${ruleSet} nтАЩest pas un jeu de r├иgles valide";

  static String m39(subRule) => "${subRule} nтАЩest pas un SUB_RULE valide";

  static String m40(count) =>
      "${Intl.plural(count, one: '1 ├йl├йment', other: '${count} ├йl├йments')}";

  static String m41(line, message) => "Ligne ${line}┬а: ${message}";

  static String m42(appName) =>
      "1. Ouvrez R├йglages syst├иme > Confidentialit├й et s├йcurit├й\n2. Choisissez Service de localisation\n3. Trouvez ${appName} dans la liste et cochez-le\n\nUne fois termin├й, revenez dans lтАЩapp pour continuer. Merci de votre coop├йration.";

  static String m43(label, max) =>
      "${label} ne doit pas d├йpasser ${max} caract├иres";

  static String m44(size) => "${size} lib├йr├йs";

  static String m45(count) =>
      "${Intl.plural(count, one: 'il y a 1 minute', other: 'il y a ${count} minutes')}";

  static String m46(count) =>
      "${Intl.plural(count, other: 'il y a ${count} min')}";

  static String m47(count) =>
      "${Intl.plural(count, one: 'il y a 1 mois', other: 'il y a ${count} mois')}";

  static String m48(count) =>
      "${Intl.plural(count, other: 'il y a ${count} m')}";

  static String m49(code) =>
      "Le serveur a refus├й lтАЩacc├иs (HTTP ${code}). Le lien a peut-├кtre expir├й, ou les identifiants sont incorrects";

  static String m50(code) => "Le serveur a rejet├й la requ├кte (HTTP ${code})";

  static String m51(code) =>
      "Rien nтАЩa ├йt├й trouv├й ├а cette adresse (HTTP ${code}). V├йrifiez que lтАЩURL est correcte";

  static String m52(detail) => "├Йchec de la requ├кte r├йseau┬а: ${detail}";

  static String m53(code) =>
      "Le serveur a rencontr├й un probl├иme (HTTP ${code}). R├йessayez plus tard";

  static String m54(label) => "Aucun ├йl├йment (${label}) pour le moment";

  static String m55(label, min, max) =>
      "${label} doit ├кtre compris entre ${min} et ${max}";

  static String m56(label) => "${label} doit ├кtre un nombre";

  static String m57(label) => "${label} doit ├кtre compris entre 1024 et 49151";

  static String m58(port) => "Port ${port}";

  static String m59(days) =>
      "${Intl.plural(days, one: '1 jour restant', other: '${days} jours restants')}";

  static String m60(date, days) =>
      "Expire le ${date}, ${Intl.plural(days, one: '1 jour restant', other: '${days} jours restants')}";

  static String m61(time) => "Mis ├а jour ${time}";

  static String m62(label, profiles) =>
      "${label} est encore utilis├й par ${profiles}, qui ne fonctionneront plus correctement sтАЩil est supprim├й. Voulez-vous vraiment le supprimer┬а?";

  static String m63(count, label) =>
      "${Intl.plural(count, one: '1 proxy', other: '${label} proxys')}";

  static String m64(name, count) => "${name} et autres (${count} proxys)";

  static String m65(removed) =>
      "Ces proxys seront supprim├йs┬а: ${removed}. Une ligne dont le nom a chang├й compte comme un nouveau proxy, et les profils personnalis├йs qui nomment les proxys supprim├йs les signaleront comme manquants. Appliquer quand m├кme┬а?";

  static String m66(removed, added) =>
      "Ces proxys seront supprim├йs┬а: ${removed}. Ceux-ci seront ajout├йs┬а: ${added}. Une ligne dont le nom a chang├й compte comme un nouveau proxy, et les profils personnalis├йs qui nomment les proxys supprim├йs les signaleront comme manquants. Appliquer quand m├кme┬а?";

  static String m67(label) =>
      "${label} est encore nomm├й par des r├иgles, des groupes de proxys, des proxys de connexion, le DNS ou le NTP de ce profil, qui cesseront de fonctionner sтАЩil est supprim├й. Voulez-vous vraiment le supprimer┬а?";

  static String m68(count, label) =>
      "${Intl.plural(count, one: '1 groupe de proxys', other: '${label} groupes de proxys')}";

  static String m69(count, label) =>
      "${Intl.plural(count, one: '1 r├иgle', other: '${label} r├иgles')}";

  static String m70(appName) => "${appName} (mode sans ├йchec)";

  static String m71(count) =>
      "${Intl.plural(count, one: '1 seconde', other: '${count} secondes')}";

  static String m72(count) => "${count} actifs";

  static String m73(count) =>
      "${Intl.plural(count, one: '1 probl├иme', other: '${count} probl├иmes')}";

  static String m74(time) => "V├йrifi├й ├а ${time}";

  static String m75(count) =>
      "${Intl.plural(count, one: '1 r├йglage', other: '${count} r├йglages')}";

  static String m76(link) => "Aucun proxy nтАЩa pu ├кtre lu dans ${link}";

  static String m77(label) => "${label} doit ├кtre un seul ├йl├йment";

  static String m78(value) => "Pic ${value}";

  static String m79(value) => "Total ${value}";

  static String m80(label) => "${label} doit ├кtre une URL";

  static String m81(count) =>
      "${Intl.plural(count, one: 'il y a 1 an', other: 'il y a ${count} ans')}";

  static String m82(count) =>
      "${Intl.plural(count, other: 'il y a ${count} a')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about": MessageLookupByLibrary.simpleMessage("├А propos"),
    "accessControl": MessageLookupByLibrary.simpleMessage(
      "Contr├┤le dтАЩacc├иs",
    ),
    "accessControlAllowDesc": MessageLookupByLibrary.simpleMessage(
      "Seules les apps s├йlectionn├йes passent par le VPN",
    ),
    "accessControlDesc": MessageLookupByLibrary.simpleMessage(
      "Le contr├┤le dтАЩacc├иs choisit les apps qui utilisent le proxy.",
    ),
    "accessControlDisabledDesc": MessageLookupByLibrary.simpleMessage(
      "Le contr├┤le dтАЩacc├иs des apps est d├йsactiv├й",
    ),
    "accessControlNotAllowDesc": MessageLookupByLibrary.simpleMessage(
      "Les apps s├йlectionn├йes sont exclues du VPN",
    ),
    "accessControlSettings": MessageLookupByLibrary.simpleMessage(
      "R├йglages du contr├┤le dтАЩacc├иs",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Compte"),
    "action": MessageLookupByLibrary.simpleMessage("Action"),
    "actionDelayTest": MessageLookupByLibrary.simpleMessage(
      "Tester tous les d├йlais",
    ),
    "actionDirectMode": MessageLookupByLibrary.simpleMessage("Mode direct"),
    "actionGlobalMode": MessageLookupByLibrary.simpleMessage("Mode global"),
    "actionMode": MessageLookupByLibrary.simpleMessage("Changer de mode"),
    "actionProxy": MessageLookupByLibrary.simpleMessage("Proxy syst├иme"),
    "actionRuleMode": MessageLookupByLibrary.simpleMessage("Mode r├иgles"),
    "actionStart": MessageLookupByLibrary.simpleMessage("D├йmarrer/Arr├кter"),
    "actionTun": MessageLookupByLibrary.simpleMessage("TUN"),
    "actionUpdateProfiles": MessageLookupByLibrary.simpleMessage(
      "Mettre ├а jour les profils",
    ),
    "actionView": MessageLookupByLibrary.simpleMessage("Afficher/Masquer"),
    "add": MessageLookupByLibrary.simpleMessage("Ajouter"),
    "addCustomProxy": MessageLookupByLibrary.simpleMessage("Ajouter un proxy"),
    "addFilters": MessageLookupByLibrary.simpleMessage("Ajouter des filtres"),
    "addNodes": MessageLookupByLibrary.simpleMessage("Ajouter des n┼Уuds"),
    "addOverrideEntry": MessageLookupByLibrary.simpleMessage(
      "Ajouter une entr├йe de remplacement",
    ),
    "addProfile": MessageLookupByLibrary.simpleMessage("Ajouter un profil"),
    "addProxyGroup": MessageLookupByLibrary.simpleMessage(
      "Ajouter un groupe de proxys",
    ),
    "addRule": MessageLookupByLibrary.simpleMessage("Ajouter une r├иgle"),
    "addSettingEntry": MessageLookupByLibrary.simpleMessage(
      "Ajouter un r├йglage",
    ),
    "addSsid": MessageLookupByLibrary.simpleMessage("Ajouter un SSID"),
    "addedRules": MessageLookupByLibrary.simpleMessage("R├иgles ajout├йes"),
    "additionalParameters": MessageLookupByLibrary.simpleMessage(
      "Param├иtres suppl├йmentaires",
    ),
    "additionalPrefix": MessageLookupByLibrary.simpleMessage("Pr├йfixe du nom"),
    "additionalSuffix": MessageLookupByLibrary.simpleMessage("Suffixe du nom"),
    "address": MessageLookupByLibrary.simpleMessage("Adresse"),
    "addressHelp": MessageLookupByLibrary.simpleMessage(
      "Adresse du serveur WebDAV",
    ),
    "addressTip": MessageLookupByLibrary.simpleMessage(
      "Veuillez saisir une adresse WebDAV valide",
    ),
    "advancedConfig": MessageLookupByLibrary.simpleMessage(
      "Configuration avanc├йe",
    ),
    "advancedConfigDesc": MessageLookupByLibrary.simpleMessage(
      "La configuration avanc├йe regroupe le r├йseau, le DNS, les r├иgles ajout├йes et les scripts.",
    ),
    "ageEncryptedProfile": MessageLookupByLibrary.simpleMessage(
      "Profil chiffr├й",
    ),
    "ageSecretKey": MessageLookupByLibrary.simpleMessage("Cl├й secr├иte age"),
    "ageSecretKeyRequiredTip": MessageLookupByLibrary.simpleMessage(
      "Ce profil est chiffr├й avec age et n├йcessite une cl├й secr├иte age pour ├кtre d├йchiffr├й",
    ),
    "agree": MessageLookupByLibrary.simpleMessage("Accepter"),
    "allReferencedProxies": MessageLookupByLibrary.simpleMessage(
      "Tous les proxys r├йf├йrenc├йs",
    ),
    "allReferencedProxyProviders": MessageLookupByLibrary.simpleMessage(
      "Tous les fournisseurs de proxys r├йf├йrenc├йs",
    ),
    "allowBypass": MessageLookupByLibrary.simpleMessage(
      "Autoriser les apps ├а contourner le VPN",
    ),
    "allowLan": MessageLookupByLibrary.simpleMessage("Autoriser le LAN"),
    "allowedIps": MessageLookupByLibrary.simpleMessage("IP autoris├йes"),
    "answers": MessageLookupByLibrary.simpleMessage("R├йponses"),
    "app": MessageLookupByLibrary.simpleMessage("App"),
    "appAccessControl": MessageLookupByLibrary.simpleMessage(
      "Contr├┤le dтАЩacc├иs des apps",
    ),
    "appIconDesign": MessageLookupByLibrary.simpleMessage(
      "Conception de lтАЩic├┤ne de lтАЩapp",
    ),
    "appProxiesEmpty": MessageLookupByLibrary.simpleMessage(
      "Aucun proxy local",
    ),
    "appendSystemDns": MessageLookupByLibrary.simpleMessage(
      "Ajouter le DNS du syst├иme",
    ),
    "authentication": MessageLookupByLibrary.simpleMessage("Authentification"),
    "authenticationDesc": MessageLookupByLibrary.simpleMessage(
      "LтАЩauthentification demande un nom dтАЩutilisateur et un mot de passe sur le port du proxy local.",
    ),
    "authenticationSystemProxyDesc": MessageLookupByLibrary.simpleMessage(
      "Le proxy syst├иme nтАЩest pas appliqu├й tant que lтАЩauthentification est activ├йe.",
    ),
    "authorize": MessageLookupByLibrary.simpleMessage("Autoriser"),
    "authorized": MessageLookupByLibrary.simpleMessage("Autoris├й"),
    "auto": MessageLookupByLibrary.simpleMessage("Auto"),
    "autoCheckUpdate": MessageLookupByLibrary.simpleMessage(
      "Rechercher les mises ├а jour automatiquement",
    ),
    "autoCloseConnections": MessageLookupByLibrary.simpleMessage(
      "Fermer les connexions automatiquement",
    ),
    "autoCloseConnectionsDesc": MessageLookupByLibrary.simpleMessage(
      "La fermeture automatique coupe les connexions ouvertes lorsque vous changez de proxy.",
    ),
    "autoInclude": MessageLookupByLibrary.simpleMessage(
      "Inclure automatiquement",
    ),
    "autoLaunch": MessageLookupByLibrary.simpleMessage("Lancement automatique"),
    "autoRun": MessageLookupByLibrary.simpleMessage("D├йmarrage automatique"),
    "autoRunDesc": MessageLookupByLibrary.simpleMessage(
      "Le d├йmarrage automatique active le proxy ├а lтАЩouverture de lтАЩapp.",
    ),
    "autoSetSystemDns": MessageLookupByLibrary.simpleMessage(
      "D├йfinir automatiquement le DNS du syst├иme",
    ),
    "autoUpdate": MessageLookupByLibrary.simpleMessage(
      "Mise ├а jour automatique",
    ),
    "autoUpdateInterval": MessageLookupByLibrary.simpleMessage(
      "Intervalle de mise ├а jour automatique",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Retour"),
    "backup": MessageLookupByLibrary.simpleMessage("Sauvegarde"),
    "backupAndRestore": MessageLookupByLibrary.simpleMessage(
      "Sauvegarde et restauration",
    ),
    "backupFromNewerVersion": MessageLookupByLibrary.simpleMessage(
      "Cette sauvegarde provient dтАЩune version plus r├йcente de lтАЩapp. Mettez lтАЩapp ├а jour avant de la restaurer",
    ),
    "backupSuccess": MessageLookupByLibrary.simpleMessage(
      "Sauvegarde r├йussie",
    ),
    "basicInfo": MessageLookupByLibrary.simpleMessage("Infos de base"),
    "basicStrategy": MessageLookupByLibrary.simpleMessage(
      "Strat├йgies de base",
    ),
    "batchAdd": MessageLookupByLibrary.simpleMessage("Ajout group├й"),
    "batchImport": MessageLookupByLibrary.simpleMessage("Importation group├йe"),
    "batchLinkInputTip": MessageLookupByLibrary.simpleMessage(
      "Un lien par ligne",
    ),
    "batchListInputTip": MessageLookupByLibrary.simpleMessage(
      "Un ├йl├йment par ligne, ou s├йpar├йs par des virgules",
    ),
    "batchMapInputTip": MessageLookupByLibrary.simpleMessage(
      "Une entr├йe par ligne┬а: la cl├й, un espace, puis la valeur",
    ),
    "batchPreviewTip": m0,
    "batchUrlInputTip": MessageLookupByLibrary.simpleMessage(
      "Une URL par ligne",
    ),
    "batteryOptimizationDesc": MessageLookupByLibrary.simpleMessage(
      "Ignorer lтАЩoptimisation de la batterie maintient lтАЩapp active en arri├иre-plan.",
    ),
    "bind": MessageLookupByLibrary.simpleMessage("Lier"),
    "blacklistMode": MessageLookupByLibrary.simpleMessage("Mode liste noire"),
    "blockConnection": MessageLookupByLibrary.simpleMessage(
      "Bloquer la connexion",
    ),
    "brightness": MessageLookupByLibrary.simpleMessage("Luminosit├й"),
    "bypassDomain": MessageLookupByLibrary.simpleMessage(
      "Domaines contourn├йs",
    ),
    "bypassDomainDesc": MessageLookupByLibrary.simpleMessage(
      "Les domaines contourn├йs ne sтАЩappliquent que si le proxy syst├иme est activ├й.",
    ),
    "bypassPrivateRoute": MessageLookupByLibrary.simpleMessage(
      "Contourner les adresses priv├йes",
    ),
    "bypassPrivateRouteDesc": MessageLookupByLibrary.simpleMessage(
      "Avec ┬л┬аContourner les adresses priv├йes┬а┬╗ activ├й, les adresses LAN, de bouclage et multicast ne passent pas par TUN.",
    ),
    "cache": MessageLookupByLibrary.simpleMessage("Cache"),
    "cacheAlgorithm": MessageLookupByLibrary.simpleMessage(
      "Algorithme de cache",
    ),
    "cacheCorrupt": MessageLookupByLibrary.simpleMessage(
      "Le cache est corrompu. Le vider┬а?",
    ),
    "cacheMaxSize": MessageLookupByLibrary.simpleMessage("Taille du cache"),
    "cameraPermissionDesc": MessageLookupByLibrary.simpleMessage(
      "Autorisez lтАЩacc├иs ├а lтАЩappareil photo dans les r├йglages du syst├иme pour scanner des codes QR, ou choisissez une image de code QR dans lтАЩalbum.",
    ),
    "cameraPermissionRequired": MessageLookupByLibrary.simpleMessage(
      "Autorisation de lтАЩappareil photo requise",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "Appareil photo indisponible",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
    "cancelSelectAll": MessageLookupByLibrary.simpleMessage(
      "Tout d├йs├йlectionner",
    ),
    "cannotSave": MessageLookupByLibrary.simpleMessage(
      "Enregistrement impossible",
    ),
    "changeProxyFailedTip": MessageLookupByLibrary.simpleMessage(
      "├Йchec du changement de proxy┬а; la s├йlection pr├йc├йdente a ├йt├й r├йtablie",
    ),
    "changelogBreaking": MessageLookupByLibrary.simpleMessage(
      "Changements majeurs",
    ),
    "changelogFeatures": MessageLookupByLibrary.simpleMessage("Nouveaut├йs"),
    "changelogFixes": MessageLookupByLibrary.simpleMessage(
      "Corrections de bugs",
    ),
    "changelogPerformance": MessageLookupByLibrary.simpleMessage(
      "Performances",
    ),
    "changelogReverts": MessageLookupByLibrary.simpleMessage("Annulations"),
    "checkCertificate": MessageLookupByLibrary.simpleMessage(
      "V├йrifier les certificats TLS",
    ),
    "checkCertificateDesc": MessageLookupByLibrary.simpleMessage(
      "Sans v├йrification TLS, les abonnements et les sauvegardes sont expos├йs aux attaques de lтАЩhomme du milieu.",
    ),
    "checkUpdate": MessageLookupByLibrary.simpleMessage(
      "Rechercher des mises ├а jour",
    ),
    "checkUpdateError": MessageLookupByLibrary.simpleMessage(
      "LтАЩapp est d├йj├а ├а jour",
    ),
    "cipher": MessageLookupByLibrary.simpleMessage("Chiffrement"),
    "clearData": MessageLookupByLibrary.simpleMessage("Effacer les donn├йes"),
    "clearDataAndExitTip": MessageLookupByLibrary.simpleMessage(
      "Cela supprime tous les profils, r├йglages et donn├йes locales, puis ferme lтАЩapp. Rouvrez-la pour repartir de z├йro.",
    ),
    "clearDataFailed": m1,
    "clearSearch": MessageLookupByLibrary.simpleMessage("Effacer la recherche"),
    "clientFingerprint": MessageLookupByLibrary.simpleMessage(
      "Empreinte client",
    ),
    "clipboardExport": MessageLookupByLibrary.simpleMessage(
      "Exporter vers le presse-papiers",
    ),
    "clipboardImport": MessageLookupByLibrary.simpleMessage(
      "Importer depuis le presse-papiers",
    ),
    "clipboardWriteFailed": MessageLookupByLibrary.simpleMessage(
      "Impossible de copier dans le presse-papiers. La s├йlection est peut-├кtre trop volumineuse",
    ),
    "close": MessageLookupByLibrary.simpleMessage("Fermer"),
    "closeConnections": MessageLookupByLibrary.simpleMessage(
      "Fermer les connexions",
    ),
    "color": MessageLookupByLibrary.simpleMessage("Couleur"),
    "colorStyle": MessageLookupByLibrary.simpleMessage("Style de couleur"),
    "columns": MessageLookupByLibrary.simpleMessage("Colonnes"),
    "compact": MessageLookupByLibrary.simpleMessage("Compact"),
    "compatible": MessageLookupByLibrary.simpleMessage(
      "Mode de compatibilit├й",
    ),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirmer"),
    "confirmClearAllData": MessageLookupByLibrary.simpleMessage(
      "Voulez-vous vraiment effacer toutes les donn├йes┬а?",
    ),
    "confirmDeleteProxyGroup": MessageLookupByLibrary.simpleMessage(
      "Voulez-vous vraiment supprimer ce groupe de proxys┬а?",
    ),
    "confirmExitWindow": MessageLookupByLibrary.simpleMessage(
      "Voulez-vous vraiment quitter la fen├кtre actuelle┬а?",
    ),
    "confirmForceCrashCore": MessageLookupByLibrary.simpleMessage(
      "Voulez-vous vraiment forcer le plantage du c┼Уur┬а?",
    ),
    "congestionControl": MessageLookupByLibrary.simpleMessage(
      "Contr├┤le de congestion",
    ),
    "congestionController": MessageLookupByLibrary.simpleMessage(
      "Contr├┤le de congestion TCP",
    ),
    "congestionControllerDesc": MessageLookupByLibrary.simpleMessage(
      "Le contr├┤le de congestion TCP ne fonctionne quтАЩavec la pile mips.",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Connect├й"),
    "connecting": MessageLookupByLibrary.simpleMessage("ConnexionтАж"),
    "connection": MessageLookupByLibrary.simpleMessage("Connexion"),
    "connectionStats": MessageLookupByLibrary.simpleMessage(
      "Statistiques de connexion",
    ),
    "connectionStatsDesc": MessageLookupByLibrary.simpleMessage(
      "Connexions en direct, requ├кtes r├йcentes et requ├кtes DNS",
    ),
    "connections": MessageLookupByLibrary.simpleMessage("Connexions"),
    "connectivity": MessageLookupByLibrary.simpleMessage("Connectivit├й┬а: "),
    "content": MessageLookupByLibrary.simpleMessage("Contenu"),
    "contentNotEmpty": MessageLookupByLibrary.simpleMessage(
      "Le contenu ne peut pas ├кtre vide",
    ),
    "controlGlobalAddedRules": MessageLookupByLibrary.simpleMessage(
      "G├йrer les r├иgles ajout├йes globales",
    ),
    "copy": MessageLookupByLibrary.simpleMessage("Copier"),
    "copyEnvVar": MessageLookupByLibrary.simpleMessage(
      "Copier les variables dтАЩenvironnement",
    ),
    "copyLink": MessageLookupByLibrary.simpleMessage("Copier le lien"),
    "copySuccess": MessageLookupByLibrary.simpleMessage("Copi├й avec succ├иs"),
    "core": MessageLookupByLibrary.simpleMessage("C┼Уur"),
    "coreBlockedByPolicyTip": m2,
    "coreBlockedBySmartAppControlTip": MessageLookupByLibrary.simpleMessage(
      "Windows Smart App Control a bloqu├й FlClashCore.exe car il nтАЩest pas sign├й. Ouvrez S├йcurit├й Windows тЖТ Contr├┤le des applications et du navigateur тЖТ Param├иtres de Smart App Control, choisissez D├йsactiv├й, puis relancez FlClash. Smart App Control ne peut pas ├кtre r├йactiv├й sans r├йinstaller Windows.",
    ),
    "coreCertificateChecksAlwaysEnabled": MessageLookupByLibrary.simpleMessage(
      "Les t├йl├йchargements du noyau v├йrifient toujours les certificats. Ce r├йglage concerne les t├йl├йchargements de lтАЩapplication.",
    ),
    "coreFeatureUnavailable": MessageLookupByLibrary.simpleMessage(
      "Cette fonctionnalit├й nтАЩest pas prise en charge par le c┼Уur actuel.",
    ),
    "coreStatus": MessageLookupByLibrary.simpleMessage("├Йtat du c┼Уur"),
    "country": MessageLookupByLibrary.simpleMessage("R├йgion"),
    "crashDetected": MessageLookupByLibrary.simpleMessage("Plantage d├йtect├й"),
    "crashDetectedTip": m3,
    "crashTest": MessageLookupByLibrary.simpleMessage("Test de plantage"),
    "create": MessageLookupByLibrary.simpleMessage("Cr├йer"),
    "createProfileFromUrlTip": m4,
    "creationTime": MessageLookupByLibrary.simpleMessage("Date de cr├йation"),
    "currentOutboundDesc": MessageLookupByLibrary.simpleMessage(
      "Contient le bouton de d├йmarrage et ne peut pas ├кtre retir├й",
    ),
    "custom": MessageLookupByLibrary.simpleMessage("Personnalis├й"),
    "customColor": MessageLookupByLibrary.simpleMessage(
      "Couleur personnalis├йe",
    ),
    "customImportDroppedSubRules": m5,
    "customIssueCoreRejected": m6,
    "customIssueDialerLoop": m7,
    "customIssueDuplicateName": m8,
    "customIssueEmptyName": MessageLookupByLibrary.simpleMessage(
      "Le nom est vide",
    ),
    "customIssueGroupLoop": m9,
    "customIssueInvalidEmptyFallback": m10,
    "customIssueInvalidFilter": m11,
    "customIssueMissingDialer": m12,
    "customIssueMissingProviders": m13,
    "customIssueMissingProxies": m14,
    "customIssueNoProxySource": MessageLookupByLibrary.simpleMessage(
      "Aucun proxy ni fournisseur de proxys nтАЩest s├йlectionn├й┬а; le c┼Уur rejette donc ce groupe",
    ),
    "customIssueReservedName": m15,
    "customIssuesSummary": m16,
    "customProfile": MessageLookupByLibrary.simpleMessage("Personnalis├й"),
    "customProfileDesc": MessageLookupByLibrary.simpleMessage(
      "Assembler des groupes de proxys et des r├иgles ├а partir des proxys de lтАЩapp et dтАЩautres profils",
    ),
    "customProfileResources": MessageLookupByLibrary.simpleMessage(
      "Ressources des profils personnalis├йs",
    ),
    "customProfileResourcesDesc": MessageLookupByLibrary.simpleMessage(
      "Les ressources des profils personnalis├йs regroupent des proxys, des fournisseurs de r├иgles, des filtres et des jeux dтАЩic├┤nes.",
    ),
    "cut": MessageLookupByLibrary.simpleMessage("Couper"),
    "dark": MessageLookupByLibrary.simpleMessage("Sombre"),
    "dashboard": MessageLookupByLibrary.simpleMessage("Tableau de bord"),
    "dashboardAddableSection": MessageLookupByLibrary.simpleMessage(
      "Disponibles ├а lтАЩajout",
    ),
    "databaseWriteFailedTip": MessageLookupByLibrary.simpleMessage(
      "├Йchec de lтАЩenregistrement de la modification┬а; elle a ├йt├й annul├йe",
    ),
    "daysAgo": m17,
    "daysAgoShort": m18,
    "defaultSelected": MessageLookupByLibrary.simpleMessage(
      "S├йlection par d├йfaut",
    ),
    "defaultText": MessageLookupByLibrary.simpleMessage("Par d├йfaut"),
    "definitionNotMap": MessageLookupByLibrary.simpleMessage(
      "La configuration doit ├кtre un mappage YAML avec un nom et un type",
    ),
    "delay": MessageLookupByLibrary.simpleMessage("D├йlai"),
    "delayFailed": MessageLookupByLibrary.simpleMessage("├Йchec"),
    "delayTest": MessageLookupByLibrary.simpleMessage("Test de d├йlai"),
    "delete": MessageLookupByLibrary.simpleMessage("Supprimer"),
    "deleteMultipTip": m19,
    "deleteTip": m20,
    "desc": MessageLookupByLibrary.simpleMessage(
      "Un client proxy multiplateforme bas├й sur ClashMeta, simple dтАЩutilisation, open source et sans publicit├й.",
    ),
    "destination": MessageLookupByLibrary.simpleMessage("Destination"),
    "destinationGeoIP": MessageLookupByLibrary.simpleMessage(
      "GeoIP de destination",
    ),
    "destinationIPASN": MessageLookupByLibrary.simpleMessage(
      "ASN de lтАЩIP de destination",
    ),
    "details": m21,
    "detectionTip": MessageLookupByLibrary.simpleMessage(
      "Repose sur une API tierce┬а; ├а titre indicatif uniquement",
    ),
    "developerMode": MessageLookupByLibrary.simpleMessage("Mode d├йveloppeur"),
    "developerModeEnableTip": MessageLookupByLibrary.simpleMessage(
      "Le mode d├йveloppeur est activ├й.",
    ),
    "dialerProxy": MessageLookupByLibrary.simpleMessage("Proxy de connexion"),
    "dialerProxyDesc": MessageLookupByLibrary.simpleMessage(
      "Le proxy de connexion est la sortie utilis├йe pour joindre le serveur NTP.",
    ),
    "dialerProxyLoopStopped": m22,
    "direct": MessageLookupByLibrary.simpleMessage("Direct"),
    "disableIcmpForwarding": MessageLookupByLibrary.simpleMessage(
      "D├йsactiver le transfert ICMP",
    ),
    "disableIcmpForwardingDesc": MessageLookupByLibrary.simpleMessage(
      "Avec le transfert ICMP d├йsactiv├й, TUN r├йpond lui-m├кme au ping, qui nтАЩindique donc plus la latence r├йelle.",
    ),
    "disableKeepAlive": MessageLookupByLibrary.simpleMessage(
      "D├йsactiver le keep-alive TCP",
    ),
    "disableUDP": MessageLookupByLibrary.simpleMessage("D├йsactiver UDP"),
    "disabled": MessageLookupByLibrary.simpleMessage("D├йsactiv├й"),
    "discardChanges": MessageLookupByLibrary.simpleMessage(
      "Abandonner les modifications┬а?",
    ),
    "disclaimer": MessageLookupByLibrary.simpleMessage("Avertissement"),
    "disclaimerAcceptContent": MessageLookupByLibrary.simpleMessage(
      "En installant, copiant ou utilisant le Logiciel, vous ├кtes r├йput├й avoir lu et accept├й lтАЩint├йgralit├й de cette d├йclaration. Si vous nтАЩ├кtes pas dтАЩaccord avec lтАЩune de ses conditions, cessez imm├йdiatement dтАЩutiliser le Logiciel et d├йsinstallez-le.",
    ),
    "disclaimerAcceptTitle": MessageLookupByLibrary.simpleMessage(
      "Acceptation",
    ),
    "disclaimerAcknowledgeLabel": MessageLookupByLibrary.simpleMessage(
      "J\'ai lu et compris cette d├йclaration",
    ),
    "disclaimerAcknowledgeTip": MessageLookupByLibrary.simpleMessage(
      "Pour confirmer que vous avez compris, lisez la d├йclaration suivante et cochez la case ci-dessous :",
    ),
    "disclaimerAcknowledgeTitle": MessageLookupByLibrary.simpleMessage(
      "Confirmer la d├йclaration",
    ),
    "disclaimerChangesContent": MessageLookupByLibrary.simpleMessage(
      "Les d├йveloppeurs peuvent r├йviser cette d├йclaration ├а chaque version, et la r├йvision prend effet ├а la publication de cette version. Continuer ├а utiliser le Logiciel apr├иs une mise ├а jour signifie que vous acceptez la d├йclaration r├йvis├йe.",
    ),
    "disclaimerChangesTitle": MessageLookupByLibrary.simpleMessage(
      "Modifications de cette d├йclaration",
    ),
    "disclaimerDesc": MessageLookupByLibrary.simpleMessage(
      "Avant dтАЩutiliser FlClash (┬л┬аle Logiciel┬а┬╗), veuillez lire attentivement cette d├йclaration et vous assurer de lтАЩavoir comprise dans son int├йgralit├й. Appuyer sur ┬л┬аAccepter┬а┬╗ signifie que vous avez lu, compris et accept├й chacune des conditions ci-dessous. Si vous nтАЩ├кtes pas dтАЩaccord, appuyez sur ┬л┬аQuitter┬а┬╗ et cessez dтАЩutiliser le Logiciel.",
    ),
    "disclaimerLiabilityContent": MessageLookupByLibrary.simpleMessage(
      "Dans toute la mesure permise par la loi applicable, ni les d├йveloppeurs ni aucun contributeur ne sauraient ├кtre tenus responsables de dommages directs, indirects, accessoires, sp├йciaux, punitifs ou cons├йcutifs r├йsultant de lтАЩutilisation ou de lтАЩimpossibilit├й dтАЩutiliser le Logiciel, y compris, sans sтАЩy limiter, la perte de donn├йes, les dommages mat├йriels, les pannes r├йseau, lтАЩinterruption dтАЩactivit├й, le manque ├а gagner ou tout litige qui en d├йcoulerait, m├кme sтАЩils ont ├йt├й avertis de la possibilit├й de tels dommages.",
    ),
    "disclaimerLiabilityTitle": MessageLookupByLibrary.simpleMessage(
      "Limitation de responsabilit├й",
    ),
    "disclaimerLicenseContent": MessageLookupByLibrary.simpleMessage(
      "Le Logiciel est open source sous licence GPL-3.0. Vous pouvez lтАЩutiliser, le modifier et le distribuer librement tant que vous respectez cette licence, qui exige que les ┼Уuvres d├йriv├йes soient elles aussi publi├йes sous GPL-3.0 et que les mentions de droit dтАЩauteur dтАЩorigine soient conserv├йes.\n\nLes composants tiers du Logiciel, dont le c┼Уur Clash.Meta, suivent leurs propres licences. Les auteurs dтАЩorigine ne sont pas responsables des probl├иmes li├йs aux versions modifi├йes ou redistribu├йes.",
    ),
    "disclaimerLicenseTitle": MessageLookupByLibrary.simpleMessage(
      "Licence open source",
    ),
    "disclaimerNoServiceStatement": MessageLookupByLibrary.simpleMessage(
      "Le Logiciel ne fournit lui-m├кme aucun serveur proxy, n┼Уud, abonnement ni service dтАЩacc├иs au r├йseau, et nтАЩa aucun partenariat, mandat ni lien de garantie avec un quelconque fournisseur de tels services.",
    ),
    "disclaimerPrivacyContent": MessageLookupByLibrary.simpleMessage(
      "Le Logiciel ne collecte ni ne transmet vos URL dтАЩabonnement, d├йtails de n┼Уuds, contenus de configuration, sites visit├йs, historiques de connexion, contenus de trafic ou journaux. Ces donn├йes restent sur votre appareil et les d├йveloppeurs nтАЩy ont pas acc├иs.\n\nLe Logiciel nтАЩacc├иde au r├йseau que lorsque vous utilisez une fonction qui en a besoin, par exemple pour r├йcup├йrer lтАЩURL dтАЩabonnement que vous avez fournie lors de la mise ├а jour dтАЩun profil, ou pour contacter GitHub lors de la recherche de mises ├а jour.\n\nLe Logiciel nтАЩinclut aucun service dтАЩanalyse ni de rapport de plantage, sur aucune plateforme.",
    ),
    "disclaimerPrivacyTitle": MessageLookupByLibrary.simpleMessage(
      "Collecte de donn├йes et confidentialit├й",
    ),
    "disclaimerResponsibilityContent": MessageLookupByLibrary.simpleMessage(
      "Il vous incombe de vous assurer que lтАЩutilisation du Logiciel est licite l├а o├╣ vous vivez, et vous assumez seul la responsabilit├й juridique de tout ce que vous faites avec lui et de ses cons├йquences.\n\nLes abonnements, n┼Уuds et configurations que vous importez rel├иvent de votre choix. La lic├йit├й de leur source, la s├йcurit├й de leur contenu et la fiabilit├й de leur service sont une affaire entre vous et leurs fournisseurs.",
    ),
    "disclaimerResponsibilityTitle": MessageLookupByLibrary.simpleMessage(
      "Votre responsabilit├й",
    ),
    "disclaimerRestateHint": MessageLookupByLibrary.simpleMessage(
      "Saisissez la d├йclaration ci-dessus",
    ),
    "disclaimerRestateMismatch": MessageLookupByLibrary.simpleMessage(
      "Ne correspond pas ├а la d├йclaration",
    ),
    "disclaimerRestateTip": MessageLookupByLibrary.simpleMessage(
      "Pour confirmer que vous avez compris, saisissez la d├йclaration suivante en entier dans le champ ci-dessous┬а:",
    ),
    "disclaimerRestateTitle": MessageLookupByLibrary.simpleMessage(
      "Recopier la d├йclaration",
    ),
    "disclaimerSoftwareContent": MessageLookupByLibrary.simpleMessage(
      "Le Logiciel est un client proxy r├йseau open source construit sur le c┼Уur Clash.Meta (mihomo). Il se limite ├а fournir des outils locaux tels que la gestion de la configuration, le routage par r├иgles et le transfert du trafic.",
    ),
    "disclaimerSoftwareTitle": MessageLookupByLibrary.simpleMessage(
      "Nature du logiciel",
    ),
    "disclaimerThirdPartyContent": MessageLookupByLibrary.simpleMessage(
      "Les liens dтАЩabonnement, fichiers de configuration, jeux de r├иgles, scripts, ressources externes et liens externes sont tous fournis par des tiers. Les d├йveloppeurs ne peuvent ni ne vont v├йrifier ou garantir leur l├йgalit├й, leur exactitude, leur s├йcurit├й ou leur disponibilit├й.\n\nTout vol de donn├йes, perte financi├иre, bannissement de compte ou autre dommage caus├й par un contenu tiers se r├иgle entre vous et le tiers concern├й┬а; les d├йveloppeurs nтАЩen assument aucune responsabilit├й.",
    ),
    "disclaimerThirdPartyTitle": MessageLookupByLibrary.simpleMessage(
      "Contenus tiers",
    ),
    "disclaimerUsageContent": MessageLookupByLibrary.simpleMessage(
      "Le Logiciel est destin├й uniquement ├а des usages non commerciaux tels que lтАЩapprentissage, les ├йchanges et la recherche technique. Toute utilisation ├а des fins commerciales est strictement interdite, y compris, sans sтАЩy limiter, la distribution payante, la vente group├йe, lтАЩint├йgration ├а un service commercial ou lтАЩexercice dтАЩune activit├й au nom du Logiciel. Toute activit├й commerciale est ├йtrang├иre au Logiciel et ├а ses d├йveloppeurs.\n\nIl est strictement interdit dтАЩutiliser le Logiciel ├а des fins contraires aux lois et r├иglements de votre pays ou de votre r├йgion, y compris, sans sтАЩy limiter, le contournement de restrictions dтАЩacc├иs au r├йseau l├йgalement impos├йes, la diffusion de contenus illicites, le lancement dтАЩattaques r├йseau ou lтАЩatteinte aux droits l├йgitimes dтАЩautrui.",
    ),
    "disclaimerUsageTitle": MessageLookupByLibrary.simpleMessage(
      "Restrictions dтАЩutilisation",
    ),
    "disclaimerWarrantyContent": MessageLookupByLibrary.simpleMessage(
      "Le Logiciel est fourni ┬л┬аtel quel┬а┬╗ et ┬л┬аselon disponibilit├й┬а┬╗, sans garantie dтАЩaucune sorte, expresse ou implicite, y compris, sans sтАЩy limiter, les garanties de qualit├й marchande, dтАЩad├йquation ├а un usage particulier, dтАЩabsence de contrefa├зon, de disponibilit├й ininterrompue, dтАЩabsence dтАЩerreurs ou dтАЩabsence de failles de s├йcurit├й.\n\nLes d├йveloppeurs ne garantissent pas que le Logiciel r├йpondra ├а vos besoins ni quтАЩil fonctionnera sans interruption ni erreur.",
    ),
    "disclaimerWarrantyTitle": MessageLookupByLibrary.simpleMessage(
      "Absence de garantie",
    ),
    "disconnected": MessageLookupByLibrary.simpleMessage("D├йconnect├й"),
    "discoverNewVersion": MessageLookupByLibrary.simpleMessage(
      "Nouvelle version disponible",
    ),
    "dnsHijackDesc": MessageLookupByLibrary.simpleMessage(
      "Sans cette entr├йe, TUN d├йtourne toutes les requ├кtes DNS vers le port 53 (any:53).",
    ),
    "dnsHijacking": MessageLookupByLibrary.simpleMessage("D├йtournement DNS"),
    "dnsMode": MessageLookupByLibrary.simpleMessage("Mode DNS"),
    "dnsOverrideDesc": MessageLookupByLibrary.simpleMessage(
      "Les entr├йes ajout├йes ici remplacent le DNS de tous les profils URL et fichier┬а; tout ce qui nтАЩest pas ajout├й garde le r├йglage du profil. Les profils personnalis├йs d├йfinissent leur DNS dans leur contenu.",
    ),
    "dnsQueries": MessageLookupByLibrary.simpleMessage("Requ├кtes DNS"),
    "docked": MessageLookupByLibrary.simpleMessage("Ancr├йe"),
    "domain": MessageLookupByLibrary.simpleMessage("Domaine"),
    "done": MessageLookupByLibrary.simpleMessage("Termin├й"),
    "download": MessageLookupByLibrary.simpleMessage("R├йception"),
    "downloadBandwidth": MessageLookupByLibrary.simpleMessage(
      "Bande passante de r├йception",
    ),
    "duration": MessageLookupByLibrary.simpleMessage("Dur├йe"),
    "edit": MessageLookupByLibrary.simpleMessage("Modifier"),
    "editDashboard": MessageLookupByLibrary.simpleMessage(
      "Modifier le tableau de bord",
    ),
    "editGlobalRules": MessageLookupByLibrary.simpleMessage(
      "Modifier les r├иgles globales",
    ),
    "editProxy": MessageLookupByLibrary.simpleMessage("Modifier le proxy"),
    "editProxyGroup": MessageLookupByLibrary.simpleMessage(
      "Modifier le groupe de proxys",
    ),
    "editRule": MessageLookupByLibrary.simpleMessage("Modifier la r├иgle"),
    "editSsid": MessageLookupByLibrary.simpleMessage("Modifier le SSID"),
    "editorUnavailable": MessageLookupByLibrary.simpleMessage(
      "├Йditeur indisponible",
    ),
    "elapsed": MessageLookupByLibrary.simpleMessage("Dur├йe"),
    "emptyFallback": MessageLookupByLibrary.simpleMessage("Repli si vide"),
    "emptyTip": m23,
    "en": MessageLookupByLibrary.simpleMessage("Anglais"),
    "enabled": MessageLookupByLibrary.simpleMessage("Activ├й"),
    "entries": MessageLookupByLibrary.simpleMessage(" entr├йes"),
    "error": MessageLookupByLibrary.simpleMessage("Erreur"),
    "errorDetails": MessageLookupByLibrary.simpleMessage(
      "D├йtails de lтАЩerreur",
    ),
    "es": MessageLookupByLibrary.simpleMessage("Espagnol"),
    "exclude": MessageLookupByLibrary.simpleMessage(
      "Masquer des t├вches r├йcentes",
    ),
    "excludeDstPort": MessageLookupByLibrary.simpleMessage(
      "Ports de destination exclus",
    ),
    "excludeDstPortDesc": MessageLookupByLibrary.simpleMessage(
      "Le trafic vers les ports de destination exclus ne passe pas par TUN.",
    ),
    "excludeFilter": MessageLookupByLibrary.simpleMessage(
      "Filtre dтАЩexclusion",
    ),
    "excludeInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaces exclues",
    ),
    "excludeInterfaceDesc": MessageLookupByLibrary.simpleMessage(
      "Le trafic qui arrive sur les interfaces exclues, par exemple docker0, ne passe pas par TUN.",
    ),
    "excludeSrcPort": MessageLookupByLibrary.simpleMessage(
      "Ports source exclus",
    ),
    "excludeSrcPortDesc": MessageLookupByLibrary.simpleMessage(
      "Le trafic issu des ports source exclus ne passe pas par TUN.",
    ),
    "excludeSsids": MessageLookupByLibrary.simpleMessage("SSID exclus"),
    "excludeSsidsDesc": MessageLookupByLibrary.simpleMessage(
      "Lorsque vous ├кtes connect├й ├а un Wi-Fi dont le SSID est exclu, lтАЩ├йtat dтАЩex├йcution de lтАЩapp change automatiquement.",
    ),
    "excludeUid": MessageLookupByLibrary.simpleMessage("ID utilisateur exclus"),
    "excludeUidDesc": MessageLookupByLibrary.simpleMessage(
      "Le trafic des processus des ID utilisateur exclus ne passe pas par TUN.",
    ),
    "existsTip": m24,
    "exit": MessageLookupByLibrary.simpleMessage("Quitter"),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage(
      "Quitter le plein ├йcran",
    ),
    "exitNodes": MessageLookupByLibrary.simpleMessage("N┼Уuds de sortie"),
    "expectedStatus": MessageLookupByLibrary.simpleMessage("Statut attendu"),
    "expireTime": MessageLookupByLibrary.simpleMessage("Date dтАЩexpiration"),
    "exportFile": MessageLookupByLibrary.simpleMessage("Exporter le fichier"),
    "exportLogs": MessageLookupByLibrary.simpleMessage("Exporter les journaux"),
    "exportSuccess": MessageLookupByLibrary.simpleMessage(
      "Exportation r├йussie",
    ),
    "extend": MessageLookupByLibrary.simpleMessage("Extension"),
    "extendMode": MessageLookupByLibrary.simpleMessage("Mode dтАЩextension"),
    "extendScript": MessageLookupByLibrary.simpleMessage(
      "Script dтАЩextension",
    ),
    "externalController": MessageLookupByLibrary.simpleMessage(
      "Contr├┤leur externe",
    ),
    "externalControllerDesc": MessageLookupByLibrary.simpleMessage(
      "Le contr├┤leur externe permet de piloter le c┼Уur via le port 9090.",
    ),
    "externalControllerSecret": MessageLookupByLibrary.simpleMessage(
      "Secret du contr├┤leur externe",
    ),
    "externalLink": MessageLookupByLibrary.simpleMessage("Lien externe"),
    "extraLarge": MessageLookupByLibrary.simpleMessage("Tr├иs grande"),
    "fade": MessageLookupByLibrary.simpleMessage("Fondu"),
    "failedCount": m25,
    "failedItem": m26,
    "fakeipFilter": MessageLookupByLibrary.simpleMessage("Filtre Fake-IP"),
    "fakeipFilterMode": MessageLookupByLibrary.simpleMessage(
      "Mode du filtre Fake-IP",
    ),
    "fakeipFilterModeDesc": MessageLookupByLibrary.simpleMessage(
      "En mode filtre Fake-IP, la liste noire exclut les correspondances, la liste blanche ne falsifie que les correspondances, et ┬л┬аrule┬а┬╗ les traite comme des r├иgles.",
    ),
    "fakeipRange": MessageLookupByLibrary.simpleMessage("Plage Fake-IP"),
    "fakeipRange6": MessageLookupByLibrary.simpleMessage(
      "Plage Fake-IP (IPv6)",
    ),
    "fakeipTtl": MessageLookupByLibrary.simpleMessage("TTL Fake-IP"),
    "fallbackFilter": MessageLookupByLibrary.simpleMessage("Filtre de repli"),
    "file": MessageLookupByLibrary.simpleMessage("Fichier"),
    "fileDesc": MessageLookupByLibrary.simpleMessage(
      "Importer directement un fichier de profil",
    ),
    "fileIsUpdate": MessageLookupByLibrary.simpleMessage(
      "Le fichier a ├йt├й modifi├й. Enregistrer les modifications┬а?",
    ),
    "filter": MessageLookupByLibrary.simpleMessage("Filtrer"),
    "filters": MessageLookupByLibrary.simpleMessage("Filtres"),
    "findProcessMode": MessageLookupByLibrary.simpleMessage(
      "Recherche de processus",
    ),
    "floating": MessageLookupByLibrary.simpleMessage("Flottante"),
    "followProfile": MessageLookupByLibrary.simpleMessage("Suivre le profil"),
    "followSystem": MessageLookupByLibrary.simpleMessage("Suivre le syst├иme"),
    "fontFamily": MessageLookupByLibrary.simpleMessage("Police"),
    "fontSize": MessageLookupByLibrary.simpleMessage("Taille"),
    "forceDnsMapping": MessageLookupByLibrary.simpleMessage(
      "Forcer le mappage DNS",
    ),
    "forceDnsMappingDesc": MessageLookupByLibrary.simpleMessage(
      "Forcer le mappage DNS analyse aussi les connexions dont le domaine provient dтАЩun mappage DNS.",
    ),
    "forceDomain": MessageLookupByLibrary.simpleMessage("Domaines forc├йs"),
    "forceDomainDesc": MessageLookupByLibrary.simpleMessage(
      "Les domaines forc├йs sont aussi analys├йs┬а; les autres connexions qui ont d├йj├а un domaine sont laiss├йes telles quelles.",
    ),
    "forceRestartCoreTip": MessageLookupByLibrary.simpleMessage(
      "Voulez-vous vraiment forcer le red├йmarrage du c┼Уur┬а?",
    ),
    "fr": MessageLookupByLibrary.simpleMessage("Fran├зais"),
    "general": MessageLookupByLibrary.simpleMessage("G├йn├йral"),
    "geoResources": MessageLookupByLibrary.simpleMessage("Geo"),
    "geoSkipped": m27,
    "geoUpdated": m28,
    "geodataLoader": MessageLookupByLibrary.simpleMessage(
      "Mode Geo ├а faible m├йmoire",
    ),
    "global": MessageLookupByLibrary.simpleMessage("Global"),
    "go": MessageLookupByLibrary.simpleMessage("Aller"),
    "goDownload": MessageLookupByLibrary.simpleMessage("T├йl├йcharger"),
    "goToConfigureAddedRules": MessageLookupByLibrary.simpleMessage(
      "Aller ├а la configuration des r├иgles ajout├йes",
    ),
    "goToConfigureScript": MessageLookupByLibrary.simpleMessage(
      "Aller ├а la configuration du script",
    ),
    "grid": MessageLookupByLibrary.simpleMessage("Grille"),
    "groupCount": m29,
    "groupCountUnit": MessageLookupByLibrary.simpleMessage("groupes"),
    "groupTimeoutCount": m30,
    "hasCacheChange": MessageLookupByLibrary.simpleMessage(
      "Mettre les modifications en cache┬а?",
    ),
    "hashByInUser": MessageLookupByLibrary.simpleMessage(
      "Hachage par utilisateur entrant",
    ),
    "healthCheck": MessageLookupByLibrary.simpleMessage("Contr├┤le dтАЩ├йtat"),
    "helperCorruptTip": MessageLookupByLibrary.simpleMessage(
      "Service Helper indisponible┬а; le mode TUN ne peut pas ├кtre activ├й. R├йinstallez FlClash pour le r├йtablir.",
    ),
    "hex": MessageLookupByLibrary.simpleMessage("Hex"),
    "hideFromList": MessageLookupByLibrary.simpleMessage("Masquer de la liste"),
    "hideIp": MessageLookupByLibrary.simpleMessage("Masquer lтАЩIP"),
    "hidePassword": MessageLookupByLibrary.simpleMessage(
      "Masquer le mot de passe",
    ),
    "hideTimeoutProxies": MessageLookupByLibrary.simpleMessage(
      "Masquer les proxys expir├йs",
    ),
    "hideTimeoutProxiesDesc": MessageLookupByLibrary.simpleMessage(
      "Ignorer les proxys dont le dernier test de d├йlai a expir├й",
    ),
    "hopInterval": MessageLookupByLibrary.simpleMessage("Intervalle de saut"),
    "host": MessageLookupByLibrary.simpleMessage("H├┤te"),
    "hostname": MessageLookupByLibrary.simpleMessage("Nom dтАЩh├┤te"),
    "hotkeyConflictWith": m31,
    "hotkeyDesc": MessageLookupByLibrary.simpleMessage(
      "Les raccourcis globaux fonctionnent m├кme lorsque la fen├кtre est masqu├йe. Appuyez sur une action pour enregistrer sa combinaison de touches.",
    ),
    "hotkeyManagement": MessageLookupByLibrary.simpleMessage(
      "Gestion des raccourcis",
    ),
    "hotkeyNeedsModifier": m32,
    "hotkeyNotSet": MessageLookupByLibrary.simpleMessage("Non d├йfini"),
    "hotkeyUnavailable": MessageLookupByLibrary.simpleMessage(
      "Non enregistr├й, il est peut-├кtre pris par une autre app",
    ),
    "hours": MessageLookupByLibrary.simpleMessage("heures"),
    "hoursAgo": m33,
    "hoursAgoShort": m34,
    "hue": MessageLookupByLibrary.simpleMessage("Teinte"),
    "icon": MessageLookupByLibrary.simpleMessage("Ic├┤ne"),
    "iconRecords": MessageLookupByLibrary.simpleMessage(
      "Historique des ic├┤nes",
    ),
    "iconSets": MessageLookupByLibrary.simpleMessage("Jeux dтАЩic├┤nes"),
    "iconSetsEmptyTip": MessageLookupByLibrary.simpleMessage(
      "Aucun jeu dтАЩic├┤nes pour le moment. Ajoutez-en dans Ressources des profils personnalis├йs тЖТ Jeux dтАЩic├┤nes",
    ),
    "iconStyle": MessageLookupByLibrary.simpleMessage("Style des ic├┤nes"),
    "iconStyleFilled": MessageLookupByLibrary.simpleMessage("Pleines"),
    "iconStyleHidden": MessageLookupByLibrary.simpleMessage("Masqu├йes"),
    "iconStylePlain": MessageLookupByLibrary.simpleMessage("Simples"),
    "iconUrl": MessageLookupByLibrary.simpleMessage("URL de lтАЩic├┤ne"),
    "ignoreBatteryOptimization": MessageLookupByLibrary.simpleMessage(
      "Ignorer lтАЩoptimisation de la batterie",
    ),
    "import": MessageLookupByLibrary.simpleMessage("Importer"),
    "importConfigInvalid": MessageLookupByLibrary.simpleMessage(
      "Ce fichier nтАЩest pas une configuration importable",
    ),
    "importConfigReplaceTip": MessageLookupByLibrary.simpleMessage(
      "LтАЩimportation remplace les groupes de proxys, les r├иgles et les r├йglages actuels de ce profil",
    ),
    "importFile": MessageLookupByLibrary.simpleMessage(
      "Importer depuis un fichier",
    ),
    "importFromLink": MessageLookupByLibrary.simpleMessage(
      "Importer depuis un lien",
    ),
    "importUrl": MessageLookupByLibrary.simpleMessage(
      "Importer depuis une URL",
    ),
    "inbound": MessageLookupByLibrary.simpleMessage("Entrant"),
    "includeInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaces incluses",
    ),
    "includeInterfaceDesc": MessageLookupByLibrary.simpleMessage(
      "Seul le trafic arrivant sur les interfaces incluses passe par TUN, et les interfaces exclues ne sтАЩappliquent plus.",
    ),
    "includeUid": MessageLookupByLibrary.simpleMessage("ID utilisateur inclus"),
    "includeUidDesc": MessageLookupByLibrary.simpleMessage(
      "Seul le trafic des processus des ID utilisateur inclus passe par TUN.",
    ),
    "infiniteTime": MessageLookupByLibrary.simpleMessage("NтАЩexpire jamais"),
    "init": MessageLookupByLibrary.simpleMessage("Initialisation"),
    "initFailed": MessageLookupByLibrary.simpleMessage("├Йchec du d├йmarrage"),
    "initFailedTip": MessageLookupByLibrary.simpleMessage(
      "FlClash a rencontr├й une erreur au d├йmarrage et ne peut pas continuer. Copiez les d├йtails pour signaler le probl├иme. Si cela se reproduit, effacer les donn├йes permet g├йn├йralement de relancer lтАЩapp.",
    ),
    "initiator": MessageLookupByLibrary.simpleMessage("Initiateur"),
    "initiatorShort": MessageLookupByLibrary.simpleMessage("De"),
    "inputProxyGroupName": MessageLookupByLibrary.simpleMessage(
      "Saisissez le nom du groupe de proxys",
    ),
    "inputRuleContent": MessageLookupByLibrary.simpleMessage(
      "Saisissez le contenu de la r├иgle",
    ),
    "installedAppsPermissionDeniedMessage": MessageLookupByLibrary.simpleMessage(
      "LтАЩautorisation de la liste des apps a ├йt├й refus├йe┬а; les apps install├йes ne peuvent donc pas ├кtre list├йes. Veuillez lтАЩaccorder manuellement dans les r├йglages du syst├иme.",
    ),
    "installedAppsPermissionDesc": MessageLookupByLibrary.simpleMessage(
      "Ce syst├иme masque la liste des apps install├йes tant que lтАЩautorisation nтАЩest pas accord├йe. Accordez-la pour configurer le proxy par app.",
    ),
    "installedAppsPermissionRequired": MessageLookupByLibrary.simpleMessage(
      "Autorisation de la liste des apps requise",
    ),
    "installedFonts": MessageLookupByLibrary.simpleMessage(
      "Polices install├йes",
    ),
    "intelligentSelected": MessageLookupByLibrary.simpleMessage(
      "S├йlection intelligente",
    ),
    "interfaceName": MessageLookupByLibrary.simpleMessage(
      "Nom de lтАЩinterface",
    ),
    "interfaceNameDesc": MessageLookupByLibrary.simpleMessage(
      "Le nom de lтАЩinterface est lтАЩinterface r├йseau utilis├йe par les connexions sortantes.",
    ),
    "interfaceNameMode": MessageLookupByLibrary.simpleMessage(
      "Interface sortante",
    ),
    "interfaceNameModeClear": MessageLookupByLibrary.simpleMessage("Aucune"),
    "interfaceNameModeCustom": MessageLookupByLibrary.simpleMessage(
      "Personnalis├йe",
    ),
    "interfaceNameModeFollow": MessageLookupByLibrary.simpleMessage(
      "Suivre la configuration",
    ),
    "internet": MessageLookupByLibrary.simpleMessage("Internet"),
    "interval": MessageLookupByLibrary.simpleMessage("Intervalle"),
    "intranetIP": MessageLookupByLibrary.simpleMessage("IP du r├йseau local"),
    "invalidBackupFile": MessageLookupByLibrary.simpleMessage(
      "Fichier de sauvegarde non valide",
    ),
    "invalidCidrContent": MessageLookupByLibrary.simpleMessage(
      "Saisissez une plage dтАЩIP au format CIDR, par exemple 192.168.0.0/16",
    ),
    "invalidDscpContent": MessageLookupByLibrary.simpleMessage(
      "Une marque DSCP ne peut pas d├йpasser 63",
    ),
    "invalidHostContent": MessageLookupByLibrary.simpleMessage(
      "Saisissez un domaine ou une adresse IP",
    ),
    "invalidIconSet": MessageLookupByLibrary.simpleMessage(
      "Jeu dтАЩic├┤nes non valide",
    ),
    "invalidLinkTip": MessageLookupByLibrary.simpleMessage(
      "Ce nтАЩest ni un lien dтАЩabonnement ni un lien de partage de proxy",
    ),
    "invalidListenContent": MessageLookupByLibrary.simpleMessage(
      "Saisissez une adresse et un port, par exemple 0.0.0.0:1053",
    ),
    "invalidNetworkContent": MessageLookupByLibrary.simpleMessage(
      "Seuls tcp ou udp sont pris en charge",
    ),
    "invalidPolicy": m35,
    "invalidPortRangeContent": MessageLookupByLibrary.simpleMessage(
      "Saisissez un port ou une plage, par exemple 443 ou 8000-9000",
    ),
    "invalidProfileQrcode": MessageLookupByLibrary.simpleMessage(
      "Ce code QR ne contient pas de lien de profil",
    ),
    "invalidProxy": m36,
    "invalidProxyProvider": m37,
    "invalidRangeContent": MessageLookupByLibrary.simpleMessage(
      "Saisissez des nombres ou des plages tels que 80 ou 8000-9000, s├йpar├йs par /",
    ),
    "invalidRuleSet": m38,
    "invalidSubRule": m39,
    "ipAddress": MessageLookupByLibrary.simpleMessage("Adresse IP"),
    "ipAsn": MessageLookupByLibrary.simpleMessage("ASN"),
    "ipFlagAbuser": MessageLookupByLibrary.simpleMessage(
      "Ant├йc├йdents dтАЩabus",
    ),
    "ipFlagProxy": MessageLookupByLibrary.simpleMessage("Proxy"),
    "ipFlagTor": MessageLookupByLibrary.simpleMessage("Tor"),
    "ipFlagVpn": MessageLookupByLibrary.simpleMessage("VPN"),
    "ipFlags": MessageLookupByLibrary.simpleMessage("Indicateurs"),
    "ipOrganization": MessageLookupByLibrary.simpleMessage("Organisation"),
    "ipQualityFailed": MessageLookupByLibrary.simpleMessage(
      "Impossible de d├йterminer le type de lтАЩIP",
    ),
    "ipQualityGood": MessageLookupByLibrary.simpleMessage("Bonne"),
    "ipQualityLevel": MessageLookupByLibrary.simpleMessage("Niveau"),
    "ipQualityNormal": MessageLookupByLibrary.simpleMessage("Normale"),
    "ipQualityRetry": MessageLookupByLibrary.simpleMessage(
      "V├йrifier ├а nouveau",
    ),
    "ipQualityRisky": MessageLookupByLibrary.simpleMessage("├А risque"),
    "ipQualityShort": MessageLookupByLibrary.simpleMessage("Qualit├й"),
    "ipQualitySource": MessageLookupByLibrary.simpleMessage("R├йponse de"),
    "ipQualitySources": MessageLookupByLibrary.simpleMessage("Sources"),
    "ipSourceIpMismatch": MessageLookupByLibrary.simpleMessage(
      "IP sortante diff├йrente",
    ),
    "ipSourceNoType": MessageLookupByLibrary.simpleMessage("Aucun type"),
    "ipSourceRateLimited": MessageLookupByLibrary.simpleMessage(
      "Limite de d├йbit atteinte",
    ),
    "ipType": MessageLookupByLibrary.simpleMessage("Type"),
    "ipTypeBusiness": MessageLookupByLibrary.simpleMessage("Entreprise"),
    "ipTypeHosting": MessageLookupByLibrary.simpleMessage("Centre de donn├йes"),
    "ipTypeMobile": MessageLookupByLibrary.simpleMessage("R├йseau mobile"),
    "ipTypeResidential": MessageLookupByLibrary.simpleMessage("R├йsidentielle"),
    "ipTypeUnknown": MessageLookupByLibrary.simpleMessage("Type inconnu"),
    "ipVersion": MessageLookupByLibrary.simpleMessage("Version dтАЩIP"),
    "ipv6Desc": MessageLookupByLibrary.simpleMessage(
      "Le trafic IPv6 nтАЩest re├зu que si IPv6 est activ├й.",
    ),
    "ipv6InboundDesc": MessageLookupByLibrary.simpleMessage(
      "Avec IPv6 activ├й, le VPN autorise le trafic IPv6 entrant.",
    ),
    "ipv6Timeout": MessageLookupByLibrary.simpleMessage(
      "D├йlai dтАЩexpiration IPv6 (ms)",
    ),
    "itemsCount": m40,
    "ja": MessageLookupByLibrary.simpleMessage("Japonais"),
    "justNow": MessageLookupByLibrary.simpleMessage("├А lтАЩinstant"),
    "keepAliveIdle": MessageLookupByLibrary.simpleMessage(
      "Inactivit├й keep-alive TCP",
    ),
    "keepAliveIntervalDesc": MessageLookupByLibrary.simpleMessage(
      "Intervalle keep-alive TCP",
    ),
    "key": MessageLookupByLibrary.simpleMessage("Cl├й"),
    "ko": MessageLookupByLibrary.simpleMessage("Cor├йen"),
    "label": MessageLookupByLibrary.simpleMessage("Libell├й"),
    "language": MessageLookupByLibrary.simpleMessage("Langue"),
    "large": MessageLookupByLibrary.simpleMessage("Grande"),
    "lastUpdated": MessageLookupByLibrary.simpleMessage(
      "Derni├иre mise ├а jour",
    ),
    "launchInterrupted": MessageLookupByLibrary.simpleMessage(
      "D├йmarrage inachev├й",
    ),
    "launchInterruptedTip": MessageLookupByLibrary.simpleMessage(
      "LтАЩapp sтАЩest arr├кt├йe de fa├зon inattendue lors de son dernier d├йmarrage. La configuration automatique a ├йt├й ignor├йe pour ce lancement┬а; vous pouvez la d├йmarrer manuellement pour r├йessayer.",
    ),
    "layout": MessageLookupByLibrary.simpleMessage("Disposition"),
    "light": MessageLookupByLibrary.simpleMessage("Clair"),
    "lineIssueTip": m41,
    "lineWrap": MessageLookupByLibrary.simpleMessage("Retour ├а la ligne"),
    "link": MessageLookupByLibrary.simpleMessage("Lien"),
    "linkDesc": MessageLookupByLibrary.simpleMessage(
      "Obtenir un profil depuis un lien dтАЩabonnement ou un lien de partage de proxy",
    ),
    "liquidGlass": MessageLookupByLibrary.simpleMessage("Liquid Glass"),
    "list": MessageLookupByLibrary.simpleMessage("Liste"),
    "listen": MessageLookupByLibrary.simpleMessage("├Йcoute"),
    "listenRoutingMark": MessageLookupByLibrary.simpleMessage(
      "Marque de routage dтАЩ├йcoute",
    ),
    "listenRoutingMarkDesc": MessageLookupByLibrary.simpleMessage(
      "La marque de routage dтАЩ├йcoute ne fonctionne que sous Linux.",
    ),
    "liveConnections": MessageLookupByLibrary.simpleMessage(
      "Connexions en direct",
    ),
    "loading": MessageLookupByLibrary.simpleMessage("ChargementтАж"),
    "local": MessageLookupByLibrary.simpleMessage("Local"),
    "localImage": MessageLookupByLibrary.simpleMessage("Image locale"),
    "localNetworkDeniedTip": MessageLookupByLibrary.simpleMessage(
      "Autorisation du r├йseau local refus├йe┬а: la pile gvisor est utilis├йe, le LAN est inaccessible.",
    ),
    "localProxies": MessageLookupByLibrary.simpleMessage("Proxys locaux"),
    "locationPermission": MessageLookupByLibrary.simpleMessage(
      "Autorisation de localisation",
    ),
    "locationPermissionDeniedMessage": MessageLookupByLibrary.simpleMessage(
      "LтАЩautorisation de localisation a ├йt├й refus├йe┬а; le nom du Wi-Fi actuel ne peut donc pas ├кtre lu. Veuillez lтАЩactiver manuellement dans les r├йglages du syst├иme.",
    ),
    "locationPermissionDesc": MessageLookupByLibrary.simpleMessage(
      "Le syst├иme exige lтАЩautorisation de localisation pour lire le nom du Wi-Fi. Sur Android, choisissez ┬л┬аToujours autoriser┬а┬╗, sinon le nom du Wi-Fi ne peut pas ├кtre lu lorsque lтАЩapp est en arri├иre-plan.",
    ),
    "locationPermissionGuide": m42,
    "locationPermissionRequired": MessageLookupByLibrary.simpleMessage(
      "Autorisation de localisation requise",
    ),
    "log": MessageLookupByLibrary.simpleMessage("Journal"),
    "logLevel": MessageLookupByLibrary.simpleMessage(
      "Niveau de journalisation",
    ),
    "logcat": MessageLookupByLibrary.simpleMessage("Logcat"),
    "logcatDesc": MessageLookupByLibrary.simpleMessage(
      "D├йsactiver Logcat masque lтАЩentr├йe Journaux.",
    ),
    "logs": MessageLookupByLibrary.simpleMessage("Journaux"),
    "logsAndDiagnostics": MessageLookupByLibrary.simpleMessage(
      "Journaux et diagnostic",
    ),
    "logsTest": MessageLookupByLibrary.simpleMessage("Test des journaux"),
    "loopback": MessageLookupByLibrary.simpleMessage(
      "Exemption de bouclage UWP",
    ),
    "loose": MessageLookupByLibrary.simpleMessage("A├йr├йe"),
    "matchCase": MessageLookupByLibrary.simpleMessage("Respecter la casse"),
    "matchSourceIp": MessageLookupByLibrary.simpleMessage(
      "Faire correspondre lтАЩIP source",
    ),
    "matchTarget": MessageLookupByLibrary.simpleMessage("MATCH-TARGET"),
    "maxFailedTimes": MessageLookupByLibrary.simpleMessage("├Йchecs maximum"),
    "maxLengthTip": m43,
    "maximize": MessageLookupByLibrary.simpleMessage("Agrandir"),
    "memoryAppResident": MessageLookupByLibrary.simpleMessage(
      "M├йmoire r├йsidente",
    ),
    "memoryAppShared": MessageLookupByLibrary.simpleMessage("App et partag├йe"),
    "memoryCoreHeapIdle": MessageLookupByLibrary.simpleMessage("Tas inactif"),
    "memoryCoreHeapInuse": MessageLookupByLibrary.simpleMessage("Tas utilis├й"),
    "memoryCoreNotRunning": MessageLookupByLibrary.simpleMessage(
      "Le c┼Уur nтАЩest pas en cours dтАЩex├йcution",
    ),
    "memoryCoreRuntime": MessageLookupByLibrary.simpleMessage(
      "Surcharge du runtime",
    ),
    "memoryCoreStack": MessageLookupByLibrary.simpleMessage(
      "Piles de goroutines",
    ),
    "memoryEstimateDesc": MessageLookupByLibrary.simpleMessage(
      "Estimation dтАЩapr├иs la m├йmoire r├йsidente du processus┬а; elle peut diff├йrer de ce quтАЩindique le syst├иme.",
    ),
    "memoryEstimateSharedDesc": MessageLookupByLibrary.simpleMessage(
      "Le c┼Уur sтАЩex├йcute dans le processus de lтАЩapp. Sa part est estim├йe ├а partir des statistiques du runtime, et le reste compte comme m├йmoire de lтАЩapp et partag├йe.",
    ),
    "memoryInfo": MessageLookupByLibrary.simpleMessage("Infos m├йmoire"),
    "memoryInfoDesc": MessageLookupByLibrary.simpleMessage(
      "M├йmoire utilis├йe par lтАЩapp et le c┼Уur",
    ),
    "memoryReleased": MessageLookupByLibrary.simpleMessage(
      "M├йmoire lib├йr├йe",
    ),
    "memoryReleasedSize": m44,
    "messageTest": MessageLookupByLibrary.simpleMessage("Test de message"),
    "messageTestTip": MessageLookupByLibrary.simpleMessage(
      "Ceci est un message.",
    ),
    "minimize": MessageLookupByLibrary.simpleMessage("R├йduire"),
    "minimizeOnExit": MessageLookupByLibrary.simpleMessage(
      "R├йduire ├а la fermeture",
    ),
    "minutes": MessageLookupByLibrary.simpleMessage("minutes"),
    "minutesAgo": m45,
    "minutesAgoShort": m46,
    "mixedPort": MessageLookupByLibrary.simpleMessage("Port mixte"),
    "mode": MessageLookupByLibrary.simpleMessage("Mode"),
    "monochromeScheme": MessageLookupByLibrary.simpleMessage("Monochrome"),
    "monthsAgo": m47,
    "monthsAgoShort": m48,
    "more": MessageLookupByLibrary.simpleMessage("Plus"),
    "name": MessageLookupByLibrary.simpleMessage("Nom"),
    "navigationBarStyle": MessageLookupByLibrary.simpleMessage(
      "Barre inf├йrieure",
    ),
    "network": MessageLookupByLibrary.simpleMessage("R├йseau"),
    "networkAccessDeniedError": m49,
    "networkBadResponseError": m50,
    "networkCancelledError": MessageLookupByLibrary.simpleMessage(
      "La requ├кte a ├йt├й annul├йe",
    ),
    "networkConnectionError": MessageLookupByLibrary.simpleMessage(
      "Impossible de se connecter au serveur. V├йrifiez votre connexion r├йseau ou vos r├йglages de proxy",
    ),
    "networkHostLookupError": MessageLookupByLibrary.simpleMessage(
      "Impossible de r├йsoudre lтАЩadresse du serveur. V├йrifiez que lтАЩURL est correcte et que le DNS fonctionne",
    ),
    "networkName": MessageLookupByLibrary.simpleMessage("Nom du r├йseau"),
    "networkNotFoundError": m51,
    "networkRateLimitedError": MessageLookupByLibrary.simpleMessage(
      "Trop de requ├кtes (HTTP 429). Patientez un instant puis r├йessayez",
    ),
    "networkRequestFailed": m52,
    "networkSecret": MessageLookupByLibrary.simpleMessage("Secret du r├йseau"),
    "networkServerError": m53,
    "networkSpeed": MessageLookupByLibrary.simpleMessage("D├йbit r├йseau"),
    "networkTakeover": MessageLookupByLibrary.simpleMessage(
      "Prise en charge du trafic",
    ),
    "networkTimeoutError": MessageLookupByLibrary.simpleMessage(
      "La requ├кte a expir├й. V├йrifiez votre r├йseau ou votre proxy, puis r├йessayez",
    ),
    "networkTlsError": MessageLookupByLibrary.simpleMessage(
      "├Йchec de la connexion s├йcuris├йe. Le certificat du serveur est peut-├кtre invalide, ou la connexion est intercept├йe",
    ),
    "networkType": MessageLookupByLibrary.simpleMessage("Type de r├йseau"),
    "nextMatch": MessageLookupByLibrary.simpleMessage("R├йsultat suivant"),
    "no": MessageLookupByLibrary.simpleMessage("Non"),
    "noData": MessageLookupByLibrary.simpleMessage("Aucune donn├йe"),
    "noInfo": MessageLookupByLibrary.simpleMessage("Aucune information"),
    "noLongerRemind": MessageLookupByLibrary.simpleMessage(
      "Ne plus me le rappeler",
    ),
    "noNetwork": MessageLookupByLibrary.simpleMessage("Aucun r├йseau"),
    "noNetworkApp": MessageLookupByLibrary.simpleMessage("Apps sans r├йseau"),
    "noResolve": MessageLookupByLibrary.simpleMessage(
      "Ne pas r├йsoudre lтАЩIP",
    ),
    "noResolveHostname": MessageLookupByLibrary.simpleMessage(
      "Ne pas r├йsoudre le nom dтАЩh├┤te",
    ),
    "noSearchResults": MessageLookupByLibrary.simpleMessage("Aucun r├йsultat"),
    "nodes": MessageLookupByLibrary.simpleMessage("N┼Уuds"),
    "nonTextProviderFile": MessageLookupByLibrary.simpleMessage(
      "Cette ressource externe nтАЩest pas un fichier texte",
    ),
    "none": MessageLookupByLibrary.simpleMessage("Aucun"),
    "notRunning": MessageLookupByLibrary.simpleMessage("├А lтАЩarr├кt"),
    "notSelectedTip": MessageLookupByLibrary.simpleMessage(
      "Le groupe de proxys actuel nтАЩest pas s├йlectionnable",
    ),
    "ntpInterval": MessageLookupByLibrary.simpleMessage(
      "Intervalle de synchronisation (minutes)",
    ),
    "ntpStatusDesc": MessageLookupByLibrary.simpleMessage(
      "NTP r├йcup├иre lтАЩheure aupr├иs dтАЩun serveur NTP au lieu de lтАЩhorloge syst├иme.",
    ),
    "nullProfileDesc": MessageLookupByLibrary.simpleMessage(
      "Ajoutez un profil pour commencer",
    ),
    "nullTip": m54,
    "numberRangeTip": m55,
    "numberTip": m56,
    "obfs": MessageLookupByLibrary.simpleMessage("Obfuscation"),
    "obfsHost": MessageLookupByLibrary.simpleMessage("H├┤te dтАЩobfuscation"),
    "obfsMode": MessageLookupByLibrary.simpleMessage("Mode dтАЩobfuscation"),
    "obfsParam": MessageLookupByLibrary.simpleMessage(
      "Param├иtre dтАЩobfuscation",
    ),
    "obfsPassword": MessageLookupByLibrary.simpleMessage(
      "Mot de passe dтАЩobfuscation",
    ),
    "onDemand": MessageLookupByLibrary.simpleMessage("├А la demande"),
    "onDemandDesc": MessageLookupByLibrary.simpleMessage(
      "├А la demande met le proxy en pause sur les Wi-Fi exclus.",
    ),
    "onlyStatisticsProxy": MessageLookupByLibrary.simpleMessage(
      "Ne compter que le trafic proxy",
    ),
    "optional": MessageLookupByLibrary.simpleMessage("Facultatif"),
    "options": MessageLookupByLibrary.simpleMessage("Options"),
    "other": MessageLookupByLibrary.simpleMessage("Autre"),
    "otherContributors": MessageLookupByLibrary.simpleMessage(
      "Autres contributeurs",
    ),
    "outbound": MessageLookupByLibrary.simpleMessage("Sortant"),
    "outboundExit": MessageLookupByLibrary.simpleMessage("Sortie"),
    "outboundIp": MessageLookupByLibrary.simpleMessage("IP sortante"),
    "outboundMode": MessageLookupByLibrary.simpleMessage("Mode sortant"),
    "overrideDestination": MessageLookupByLibrary.simpleMessage(
      "Remplacer la destination",
    ),
    "overrideDestinationDesc": MessageLookupByLibrary.simpleMessage(
      "Remplacer la destination se connecte au domaine d├йtect├й plut├┤t quтАЩ├а lтАЩadresse dтАЩorigine.",
    ),
    "overrideEntries": MessageLookupByLibrary.simpleMessage(
      "Entr├йes de remplacement",
    ),
    "parsePureIp": MessageLookupByLibrary.simpleMessage(
      "Analyser les IP seules",
    ),
    "parsePureIpDesc": MessageLookupByLibrary.simpleMessage(
      "Analyser les IP seules inspecte les connexions qui ne portent quтАЩune adresse IP.",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Mot de passe"),
    "paste": MessageLookupByLibrary.simpleMessage("Coller"),
    "peers": MessageLookupByLibrary.simpleMessage("Pairs"),
    "pickFromAlbum": MessageLookupByLibrary.simpleMessage(
      "Choisir dans lтАЩalbum",
    ),
    "pinWindow": MessageLookupByLibrary.simpleMessage("├Йpingler la fen├кtre"),
    "pleaseBindWebDAV": MessageLookupByLibrary.simpleMessage(
      "Veuillez lier un WebDAV",
    ),
    "pleaseEnterScriptName": MessageLookupByLibrary.simpleMessage(
      "Veuillez saisir un nom de script",
    ),
    "pleaseUploadValidQrcode": MessageLookupByLibrary.simpleMessage(
      "Veuillez importer un code QR valide",
    ),
    "plugin": MessageLookupByLibrary.simpleMessage("Plugin"),
    "pluginHost": MessageLookupByLibrary.simpleMessage("H├┤te du plugin"),
    "pluginMode": MessageLookupByLibrary.simpleMessage("Mode du plugin"),
    "port": MessageLookupByLibrary.simpleMessage("Port"),
    "portConflictTip": MessageLookupByLibrary.simpleMessage(
      "Veuillez saisir un autre port",
    ),
    "portHopping": MessageLookupByLibrary.simpleMessage("Saut de port"),
    "portTip": m57,
    "portValue": m58,
    "ports": MessageLookupByLibrary.simpleMessage("Ports"),
    "preSharedKey": MessageLookupByLibrary.simpleMessage("Cl├й pr├йpartag├йe"),
    "prerequisites": MessageLookupByLibrary.simpleMessage("Pr├йrequis"),
    "pressKeyboard": MessageLookupByLibrary.simpleMessage(
      "Appuyez sur une combinaison de touches",
    ),
    "preview": MessageLookupByLibrary.simpleMessage("Aper├зu"),
    "previousMatch": MessageLookupByLibrary.simpleMessage(
      "R├йsultat pr├йc├йdent",
    ),
    "privateKey": MessageLookupByLibrary.simpleMessage("Cl├й priv├йe"),
    "privateKeyPassphrase": MessageLookupByLibrary.simpleMessage(
      "Phrase secr├иte de la cl├й priv├йe",
    ),
    "process": MessageLookupByLibrary.simpleMessage("Processus"),
    "profile": MessageLookupByLibrary.simpleMessage("Profil"),
    "profileAutoUpdateIntervalInvalidValidationDesc":
        MessageLookupByLibrary.simpleMessage(
          "Veuillez saisir un intervalle valide",
        ),
    "profileAutoUpdateIntervalNullValidationDesc":
        MessageLookupByLibrary.simpleMessage(
          "Veuillez saisir lтАЩintervalle de mise ├а jour automatique",
        ),
    "profileDaysLeft": m59,
    "profileExpiresIn": m60,
    "profileHasUpdate": MessageLookupByLibrary.simpleMessage(
      "Le profil a ├йt├й modifi├й. D├йsactiver la mise ├а jour automatique┬а?",
    ),
    "profileNameNullValidationDesc": MessageLookupByLibrary.simpleMessage(
      "Veuillez saisir le nom du profil",
    ),
    "profileSettingsDesc": MessageLookupByLibrary.simpleMessage(
      "SтАЩapplique uniquement ├а ce profil┬а; tout ce qui nтАЩest pas ajout├й utilise la valeur par d├йfaut.",
    ),
    "profileTunSettingsDesc": MessageLookupByLibrary.simpleMessage(
      "SтАЩapplique uniquement ├а ce profil et prime sur les entr├йes de remplacement TUN des r├йglages r├йseau.",
    ),
    "profileUpdatedAt": m61,
    "profileUrlInvalidValidationDesc": MessageLookupByLibrary.simpleMessage(
      "Veuillez saisir une URL de profil valide",
    ),
    "profileUrlNullValidationDesc": MessageLookupByLibrary.simpleMessage(
      "Veuillez saisir lтАЩURL du profil",
    ),
    "profiles": MessageLookupByLibrary.simpleMessage("Profils"),
    "profilesSort": MessageLookupByLibrary.simpleMessage("Trier les profils"),
    "project": MessageLookupByLibrary.simpleMessage("Projet"),
    "protocol": MessageLookupByLibrary.simpleMessage("Protocole"),
    "protocolParam": MessageLookupByLibrary.simpleMessage(
      "Param├иtre du protocole",
    ),
    "protocolVersion": MessageLookupByLibrary.simpleMessage(
      "Version du protocole",
    ),
    "providerInUse": m62,
    "providerUrlTip": MessageLookupByLibrary.simpleMessage(
      "Seuls les fournisseurs distants sont pris en charge",
    ),
    "providers": MessageLookupByLibrary.simpleMessage("Ressources externes"),
    "proxies": MessageLookupByLibrary.simpleMessage("Proxys"),
    "proxiesCount": m63,
    "proxiesProfileLabel": m64,
    "proxiesRemovedTip": m65,
    "proxiesReplacedTip": m66,
    "proxyChains": MessageLookupByLibrary.simpleMessage("Cha├оne de proxys"),
    "proxyGroup": MessageLookupByLibrary.simpleMessage("Groupe de proxys"),
    "proxyGroupEmpty": MessageLookupByLibrary.simpleMessage(
      "Le groupe de proxys est vide",
    ),
    "proxyGroupInUse": m67,
    "proxyGroupsAfterStart": MessageLookupByLibrary.simpleMessage(
      "Les groupes sтАЩaffichent ici une fois le c┼Уur d├йmarr├й",
    ),
    "proxyGroupsCount": m68,
    "proxyProviders": MessageLookupByLibrary.simpleMessage(
      "Fournisseurs de proxys",
    ),
    "proxyType": MessageLookupByLibrary.simpleMessage("Type de proxy"),
    "pruneCache": MessageLookupByLibrary.simpleMessage("Nettoyer le cache"),
    "publicKey": MessageLookupByLibrary.simpleMessage("Cl├й publique"),
    "pureBlack": MessageLookupByLibrary.simpleMessage("Noir pur"),
    "pureBlackMode": MessageLookupByLibrary.simpleMessage("Mode noir pur"),
    "qrcode": MessageLookupByLibrary.simpleMessage("Code QR"),
    "qrcodeDesc": MessageLookupByLibrary.simpleMessage(
      "Scannez un code QR pour obtenir un profil",
    ),
    "quickActions": MessageLookupByLibrary.simpleMessage("Actions rapides"),
    "quickEdit": MessageLookupByLibrary.simpleMessage("Modification rapide"),
    "recentRequests": MessageLookupByLibrary.simpleMessage(
      "Requ├кtes r├йcentes",
    ),
    "recommendedIcons": MessageLookupByLibrary.simpleMessage("Suggestions"),
    "recordType": MessageLookupByLibrary.simpleMessage(
      "Type dтАЩenregistrement",
    ),
    "redirPort": MessageLookupByLibrary.simpleMessage("Port Redir"),
    "redo": MessageLookupByLibrary.simpleMessage("R├йtablir"),
    "regex": MessageLookupByLibrary.simpleMessage("Regex"),
    "releaseMemory": MessageLookupByLibrary.simpleMessage(
      "Lib├йrer la m├йmoire",
    ),
    "releaseMemoryFailed": MessageLookupByLibrary.simpleMessage(
      "├Йchec de la lib├йration de la m├йmoire",
    ),
    "remote": MessageLookupByLibrary.simpleMessage("Distant"),
    "remoteDestination": MessageLookupByLibrary.simpleMessage(
      "Destination distante",
    ),
    "remoteDnsResolve": MessageLookupByLibrary.simpleMessage(
      "R├йsolution DNS distante",
    ),
    "remove": MessageLookupByLibrary.simpleMessage("Retirer"),
    "rename": MessageLookupByLibrary.simpleMessage("Renommer"),
    "replace": MessageLookupByLibrary.simpleMessage("Remplacer"),
    "replaceAll": MessageLookupByLibrary.simpleMessage("Tout remplacer"),
    "request": MessageLookupByLibrary.simpleMessage("Requ├кte"),
    "requests": MessageLookupByLibrary.simpleMessage("Requ├кtes"),
    "requestsAndUpdates": MessageLookupByLibrary.simpleMessage(
      "Requ├кtes et mises ├а jour",
    ),
    "required": MessageLookupByLibrary.simpleMessage("Obligatoire"),
    "reset": MessageLookupByLibrary.simpleMessage("R├йinitialiser"),
    "resetPageChangesTip": MessageLookupByLibrary.simpleMessage(
      "Cette page contient des modifications. Voulez-vous vraiment r├йinitialiser┬а?",
    ),
    "resetTip": MessageLookupByLibrary.simpleMessage(
      "Voulez-vous vraiment r├йinitialiser┬а?",
    ),
    "resourceUpdateInterval": MessageLookupByLibrary.simpleMessage(
      "Intervalle de mise ├а jour automatique",
    ),
    "resourceUpdateIntervalTip": MessageLookupByLibrary.simpleMessage(
      "LтАЩintervalle de mise ├а jour automatique doit ├кtre sup├йrieur ├а 0",
    ),
    "resources": MessageLookupByLibrary.simpleMessage("Ressources"),
    "respectRules": MessageLookupByLibrary.simpleMessage(
      "Respecter les r├иgles",
    ),
    "respectRulesDesc": MessageLookupByLibrary.simpleMessage(
      "Respecter les r├иgles fait passer les connexions DNS selon les r├иgles et n├йcessite un Proxy Server Nameserver.",
    ),
    "responseCode": MessageLookupByLibrary.simpleMessage("Code de r├йponse"),
    "restart": MessageLookupByLibrary.simpleMessage("Red├йmarrer"),
    "restartCoreTip": MessageLookupByLibrary.simpleMessage(
      "Voulez-vous vraiment red├йmarrer le c┼Уur┬а?",
    ),
    "restore": MessageLookupByLibrary.simpleMessage("Restaurer"),
    "restoreAllData": MessageLookupByLibrary.simpleMessage(
      "Restaurer toutes les donn├йes",
    ),
    "restoreOnlyConfig": MessageLookupByLibrary.simpleMessage(
      "Restaurer uniquement les profils",
    ),
    "restoreStrategy": MessageLookupByLibrary.simpleMessage(
      "Strat├йgie de restauration",
    ),
    "restoreStrategyCompatible": MessageLookupByLibrary.simpleMessage(
      "Compatible",
    ),
    "restoreStrategyOverride": MessageLookupByLibrary.simpleMessage("├Йcraser"),
    "restoreSuccess": MessageLookupByLibrary.simpleMessage(
      "Restauration r├йussie",
    ),
    "result": MessageLookupByLibrary.simpleMessage("R├йsultat"),
    "retry": MessageLookupByLibrary.simpleMessage("R├йessayer"),
    "routeAddress": MessageLookupByLibrary.simpleMessage("Adresses de route"),
    "routeExcludeAddress": MessageLookupByLibrary.simpleMessage(
      "Adresses de route exclues",
    ),
    "routingMark": MessageLookupByLibrary.simpleMessage("Marque de routage"),
    "ru": MessageLookupByLibrary.simpleMessage("Russe"),
    "rule": MessageLookupByLibrary.simpleMessage("R├иgle"),
    "ruleActionAndDesc": MessageLookupByLibrary.simpleMessage(
      "R├иgle logique ET",
    ),
    "ruleActionDomainDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond au domaine complet",
    ),
    "ruleActionDomainKeywordDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а un mot-cl├й de domaine",
    ),
    "ruleActionDomainRegexDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а une regex de domaine",
    ),
    "ruleActionDomainSuffixDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а un suffixe de domaine",
    ),
    "ruleActionDomainWildcardDesc": MessageLookupByLibrary.simpleMessage(
      "Correspondance par caract├иres g├йn├йriques┬а; seuls * et┬а? sont pris en charge",
    ),
    "ruleActionDscpDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а la marque DSCP (entrant UDP tproxy uniquement)",
    ),
    "ruleActionDstPortDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а la plage de ports de destination",
    ),
    "ruleActionGeoipDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond au code pays de lтАЩIP",
    ),
    "ruleActionGeositeDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond aux domaines de Geosite",
    ),
    "ruleActionInNameDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond au nom entrant",
    ),
    "ruleActionInPortDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond au port entrant",
    ),
    "ruleActionInTypeDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond au type entrant",
    ),
    "ruleActionInUserDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond au nom dтАЩutilisateur entrant┬а; s├йparez plusieurs noms par /",
    ),
    "ruleActionIpAsnDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а lтАЩASN de lтАЩIP",
    ),
    "ruleActionIpCidr6Desc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а une plage dтАЩadresses IP┬а; IP-CIDR6 nтАЩest quтАЩun alias",
    ),
    "ruleActionIpCidrDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а une plage dтАЩadresses IP",
    ),
    "ruleActionIpSuffixDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а une plage de suffixes dтАЩIP",
    ),
    "ruleActionMatchDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а toutes les requ├кtes, sans condition",
    ),
    "ruleActionNetworkDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а TCP ou UDP",
    ),
    "ruleActionNotDesc": MessageLookupByLibrary.simpleMessage(
      "R├иgle logique NON",
    ),
    "ruleActionOrDesc": MessageLookupByLibrary.simpleMessage(
      "R├иgle logique OU",
    ),
    "ruleActionProcessNameDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond au nom du processus┬а; correspond au nom du paquet sur Android",
    ),
    "ruleActionProcessNameRegexDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond par regex au nom du processus┬а; correspond au nom du paquet sur Android",
    ),
    "ruleActionProcessNameWildcardDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond par caract├иres g├йn├йriques au nom du processus┬а; seuls * et┬а? sont pris en charge",
    ),
    "ruleActionProcessPathDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond au chemin complet du processus",
    ),
    "ruleActionProcessPathRegexDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond par regex au chemin du processus",
    ),
    "ruleActionProcessPathWildcardDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond par caract├иres g├йn├йriques au chemin du processus┬а; seuls * et┬а? sont pris en charge",
    ),
    "ruleActionRematchNameDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond au nom de rematch┬а; s├йparez plusieurs noms par /",
    ),
    "ruleActionRuleSetDesc": MessageLookupByLibrary.simpleMessage(
      "R├йf├йrence un jeu de r├иgles┬а; n├йcessite rule-providers",
    ),
    "ruleActionSrcGeoipDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond au code pays de lтАЩIP source",
    ),
    "ruleActionSrcIpAsnDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а lтАЩASN de lтАЩIP source",
    ),
    "ruleActionSrcIpCidrDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а une plage dтАЩadresses IP source",
    ),
    "ruleActionSrcIpSuffixDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а une plage de suffixes dтАЩIP source",
    ),
    "ruleActionSrcPortDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а la plage de ports source",
    ),
    "ruleActionSubRuleDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond vers une sous-r├иgle┬а; attention aux parenth├иses",
    ),
    "ruleActionUidDesc": MessageLookupByLibrary.simpleMessage(
      "Correspond ├а lтАЩID dтАЩutilisateur Linux",
    ),
    "ruleEmpty": MessageLookupByLibrary.simpleMessage("La r├иgle est vide"),
    "ruleListInvalid": MessageLookupByLibrary.simpleMessage(
      "Les r├иgles doivent former une liste YAML avec une r├иgle par ├йl├йment, par exemple - DOMAIN,example.com,DIRECT",
    ),
    "rulePresetBittorrentDirect": MessageLookupByLibrary.simpleMessage(
      "BitTorrent en direct",
    ),
    "rulePresetBlockDot": MessageLookupByLibrary.simpleMessage(
      "Bloquer DNS over TLS",
    ),
    "rulePresetBlockLoopback": MessageLookupByLibrary.simpleMessage(
      "Bloquer le bouclage du proxy",
    ),
    "rulePresetBlockQuic": MessageLookupByLibrary.simpleMessage("Bloquer QUIC"),
    "rulePresetBlockStun": MessageLookupByLibrary.simpleMessage("Bloquer STUN"),
    "rulePresetLanDirect": MessageLookupByLibrary.simpleMessage(
      "LAN en direct",
    ),
    "rulePresetSystemServicesDirect": MessageLookupByLibrary.simpleMessage(
      "Apple et Microsoft en direct",
    ),
    "ruleProviders": MessageLookupByLibrary.simpleMessage(
      "Fournisseurs de r├иgles",
    ),
    "ruleSet": MessageLookupByLibrary.simpleMessage("Jeu de r├иgles"),
    "ruleSetEmptyTip": MessageLookupByLibrary.simpleMessage(
      "Le jeu de r├иgles ne contient aucune entr├йe exploitable",
    ),
    "ruleSetInvalidTip": MessageLookupByLibrary.simpleMessage(
      "Ce fichier mrs est illisible",
    ),
    "ruleSetMixedTip": MessageLookupByLibrary.simpleMessage(
      "Le jeu de r├иgles m├йlange des domaines et des plages dтАЩIP┬а: son type est ind├йterminable",
    ),
    "ruleTarget": MessageLookupByLibrary.simpleMessage("Cible de la r├иgle"),
    "ruleTextInvalid": MessageLookupByLibrary.simpleMessage(
      "La r├иgle doit commencer par un type pris en charge, par exemple DOMAIN,example.com,DIRECT",
    ),
    "rules": MessageLookupByLibrary.simpleMessage("R├иgles"),
    "rulesCount": m69,
    "runTime": MessageLookupByLibrary.simpleMessage("Dur├йe dтАЩex├йcution"),
    "running": MessageLookupByLibrary.simpleMessage("En cours dтАЩex├йcution"),
    "runtimeConfig": MessageLookupByLibrary.simpleMessage(
      "Configuration dтАЩex├йcution",
    ),
    "safeMode": MessageLookupByLibrary.simpleMessage("Mode sans ├йchec"),
    "safeModeAppTitle": m70,
    "saturation": MessageLookupByLibrary.simpleMessage("Saturation"),
    "save": MessageLookupByLibrary.simpleMessage("Enregistrer"),
    "saveChanges": MessageLookupByLibrary.simpleMessage(
      "Enregistrer les modifications┬а?",
    ),
    "script": MessageLookupByLibrary.simpleMessage("Script"),
    "scriptModeDesc": MessageLookupByLibrary.simpleMessage(
      "Mode script┬а: r├й├йcrit tout le profil avec un script dтАЩextension",
    ),
    "scrollToSelected": MessageLookupByLibrary.simpleMessage(
      "D├йfiler jusquтАЩ├а la s├йlection",
    ),
    "search": MessageLookupByLibrary.simpleMessage("Rechercher"),
    "seconds": MessageLookupByLibrary.simpleMessage("secondes"),
    "secondsCount": m71,
    "secretKey": MessageLookupByLibrary.simpleMessage("Cl├й"),
    "sectionsInEffect": m72,
    "selectAll": MessageLookupByLibrary.simpleMessage("Tout s├йlectionner"),
    "selectRuleSet": MessageLookupByLibrary.simpleMessage(
      "Veuillez s├йlectionner un jeu de r├иgles",
    ),
    "selectSplitStrategy": MessageLookupByLibrary.simpleMessage(
      "Veuillez s├йlectionner une strat├йgie de r├йpartition",
    ),
    "selected": MessageLookupByLibrary.simpleMessage("S├йlectionn├й"),
    "server": MessageLookupByLibrary.simpleMessage("Serveur"),
    "serviceAbnormalCount": m73,
    "serviceAllAvailable": MessageLookupByLibrary.simpleMessage(
      "Tout est disponible",
    ),
    "serviceAvailable": MessageLookupByLibrary.simpleMessage("Disponible"),
    "serviceBlocked": MessageLookupByLibrary.simpleMessage("Bloqu├й"),
    "serviceCheck": MessageLookupByLibrary.simpleMessage("V├йrifier"),
    "serviceCheckAll": MessageLookupByLibrary.simpleMessage("Tout v├йrifier"),
    "serviceCheckedAt": m74,
    "serviceComingSoon": MessageLookupByLibrary.simpleMessage(
      "Bient├┤t disponible",
    ),
    "serviceDisallowedIsp": MessageLookupByLibrary.simpleMessage(
      "FAI non autoris├й",
    ),
    "serviceFailed": MessageLookupByLibrary.simpleMessage(
      "├Йchec de la v├йrification",
    ),
    "serviceManage": MessageLookupByLibrary.simpleMessage(
      "G├йrer les services",
    ),
    "serviceOriginalsOnly": MessageLookupByLibrary.simpleMessage(
      "Contenus originaux uniquement",
    ),
    "servicePending": MessageLookupByLibrary.simpleMessage("Non v├йrifi├й"),
    "serviceRestricted": MessageLookupByLibrary.simpleMessage(
      "Acc├иs restreint",
    ),
    "serviceShownOnDashboard": MessageLookupByLibrary.simpleMessage(
      "Affich├й sur le tableau de bord",
    ),
    "serviceStatus": MessageLookupByLibrary.simpleMessage("├Йtat des services"),
    "serviceUnavailable": MessageLookupByLibrary.simpleMessage("Indisponible"),
    "serviceUnsupportedRegion": MessageLookupByLibrary.simpleMessage(
      "R├йgion non prise en charge",
    ),
    "settingEntries": MessageLookupByLibrary.simpleMessage("r├йglages"),
    "settings": MessageLookupByLibrary.simpleMessage("Param├иtres"),
    "settingsCount": m75,
    "shareLinkUnreadable": m76,
    "shareLinksInvalid": MessageLookupByLibrary.simpleMessage(
      "Aucun proxy nтАЩa pu ├кtre lu dans les liens",
    ),
    "show": MessageLookupByLibrary.simpleMessage("Afficher"),
    "showLess": MessageLookupByLibrary.simpleMessage("R├йduire"),
    "showMore": MessageLookupByLibrary.simpleMessage("D├йvelopper"),
    "showNotificationStopAction": MessageLookupByLibrary.simpleMessage(
      "Bouton Arr├кter dans la notification",
    ),
    "showPassword": MessageLookupByLibrary.simpleMessage(
      "Afficher le mot de passe",
    ),
    "sidebarBlur": MessageLookupByLibrary.simpleMessage(
      "Flou de la barre lat├йrale",
    ),
    "sidebarBlurDesc": MessageLookupByLibrary.simpleMessage(
      "Afficher le bureau flout├й derri├иre la fen├кtre ├а travers la barre lat├йrale",
    ),
    "silentLaunch": MessageLookupByLibrary.simpleMessage(
      "Lancement silencieux",
    ),
    "silentLaunchDesc": MessageLookupByLibrary.simpleMessage(
      "Le lancement silencieux d├йmarre lтАЩapp sans afficher la fen├кtre.",
    ),
    "singleAdd": MessageLookupByLibrary.simpleMessage("Ajout unique"),
    "singleImport": MessageLookupByLibrary.simpleMessage("Importation unique"),
    "singleShareLinkOnly": MessageLookupByLibrary.simpleMessage(
      "Saisissez un seul lien ici┬а; pour en modifier plusieurs, utilisez la modification rapide de la liste",
    ),
    "singleValueTip": m77,
    "size": MessageLookupByLibrary.simpleMessage("Taille"),
    "skipCertVerify": MessageLookupByLibrary.simpleMessage(
      "Ignorer la v├йrification du certificat",
    ),
    "skipDomain": MessageLookupByLibrary.simpleMessage("Domaines ignor├йs"),
    "skipDomainDesc": MessageLookupByLibrary.simpleMessage(
      "Un domaine d├йtect├й figurant dans la liste des domaines ignor├йs nтАЩest pas utilis├й.",
    ),
    "skipDstAddress": MessageLookupByLibrary.simpleMessage(
      "Adresses de destination ignor├йes",
    ),
    "skipSrcAddress": MessageLookupByLibrary.simpleMessage(
      "Adresses sources ignor├йes",
    ),
    "slide": MessageLookupByLibrary.simpleMessage("Glissement"),
    "sliders": MessageLookupByLibrary.simpleMessage("Curseurs"),
    "smartAutomatic": MessageLookupByLibrary.simpleMessage("Automatique"),
    "smartAutomaticRouting": MessageLookupByLibrary.simpleMessage(
      "Choix automatique pour chaque destination",
    ),
    "smartCollectData": MessageLookupByLibrary.simpleMessage(
      "Collecter les donn├йes dтАЩentra├оnement",
    ),
    "smartCoreStopped": MessageLookupByLibrary.simpleMessage(
      "D├йmarrez le service pour afficher le classement Smart.",
    ),
    "smartCurrentNode": MessageLookupByLibrary.simpleMessage("N┼Уud actuel"),
    "smartCurrentNodeUnavailable": MessageLookupByLibrary.simpleMessage(
      "Aucun n┼Уud s├йlectionn├й",
    ),
    "smartDetails": MessageLookupByLibrary.simpleMessage("D├йtails de Smart"),
    "smartLoadFailed": MessageLookupByLibrary.simpleMessage(
      "Impossible de charger le classement Smart.",
    ),
    "smartMostUsed": MessageLookupByLibrary.simpleMessage("Fr├йquente"),
    "smartNoMatchingNodes": MessageLookupByLibrary.simpleMessage(
      "Aucun n┼Уud correspondant",
    ),
    "smartNoWeights": MessageLookupByLibrary.simpleMessage(
      "Aucun classement Smart pour le moment",
    ),
    "smartNoWeightsTip": MessageLookupByLibrary.simpleMessage(
      "Le classement appara├оt apr├иs le traitement du trafic par Smart.",
    ),
    "smartOccasionallyUsed": MessageLookupByLibrary.simpleMessage(
      "Occasionnelle",
    ),
    "smartPinNode": MessageLookupByLibrary.simpleMessage("├Йpingler le n┼Уud"),
    "smartPinned": MessageLookupByLibrary.simpleMessage("├Йpingl├й"),
    "smartPolicyPriority": MessageLookupByLibrary.simpleMessage(
      "Priorit├й des politiques",
    ),
    "smartPreferAsn": MessageLookupByLibrary.simpleMessage(
      "Privil├йgier lтАЩhistorique ASN",
    ),
    "smartRarelyUsed": MessageLookupByLibrary.simpleMessage("Rare"),
    "smartRefresh": MessageLookupByLibrary.simpleMessage(
      "Actualiser le classement",
    ),
    "smartRestoreAutomatic": MessageLookupByLibrary.simpleMessage(
      "R├йtablir la s├йlection automatique",
    ),
    "smartSampleRate": MessageLookupByLibrary.simpleMessage(
      "Taux dтАЩ├йchantillonnage pour lтАЩentra├оnement",
    ),
    "smartScore": MessageLookupByLibrary.simpleMessage("Score"),
    "smartScoreExplanation": MessageLookupByLibrary.simpleMessage(
      "Les scores et les cat├йgories dтАЩutilisation proviennent du c┼Уur. Un score nтАЩest pas un pourcentage.",
    ),
    "smartTitle": MessageLookupByLibrary.simpleMessage("Smart"),
    "smartUnknownUsage": MessageLookupByLibrary.simpleMessage("Inconnue"),
    "smartUsage": MessageLookupByLibrary.simpleMessage("Utilisation"),
    "smartUseLightGbm": MessageLookupByLibrary.simpleMessage(
      "Utiliser LightGBM",
    ),
    "sniffProtocols": MessageLookupByLibrary.simpleMessage("Protocoles"),
    "sniffer": MessageLookupByLibrary.simpleMessage("Sniffer"),
    "snifferStatusDesc": MessageLookupByLibrary.simpleMessage(
      "Le sniffer lit le domaine dans le trafic TLS, HTTP et QUIC afin que les r├иgles puissent le reconna├оtre.",
    ),
    "socksPort": MessageLookupByLibrary.simpleMessage("Port SOCKS"),
    "softStyle": MessageLookupByLibrary.simpleMessage("Doux"),
    "sort": MessageLookupByLibrary.simpleMessage("Trier"),
    "source": MessageLookupByLibrary.simpleMessage("Source"),
    "sourceIp": MessageLookupByLibrary.simpleMessage("IP source"),
    "specialProxy": MessageLookupByLibrary.simpleMessage("Proxy sp├йcial"),
    "specialRules": MessageLookupByLibrary.simpleMessage("R├иgles sp├йciales"),
    "spectrum": MessageLookupByLibrary.simpleMessage("Spectre"),
    "speedStatistics": MessageLookupByLibrary.simpleMessage(
      "Statistiques de d├йbit",
    ),
    "splitStrategy": MessageLookupByLibrary.simpleMessage(
      "Strat├йgie de r├йpartition",
    ),
    "splitStrategyNotEmpty": MessageLookupByLibrary.simpleMessage(
      "La strat├йgie de r├йpartition ne peut pas ├кtre vide",
    ),
    "ssidsEmpty": MessageLookupByLibrary.simpleMessage("Les SSID sont vides"),
    "stackMode": MessageLookupByLibrary.simpleMessage("Mode de pile"),
    "stackTrace": MessageLookupByLibrary.simpleMessage("Trace de pile"),
    "standard": MessageLookupByLibrary.simpleMessage("Standard"),
    "standardModeDesc": MessageLookupByLibrary.simpleMessage(
      "Mode standard┬а: ajoute des r├иgles par-dessus le profil",
    ),
    "start": MessageLookupByLibrary.simpleMessage("D├йmarrer"),
    "startFromScratch": MessageLookupByLibrary.simpleMessage("Partir de z├йro"),
    "startVpn": MessageLookupByLibrary.simpleMessage("D├йmarrage du VPNтАж"),
    "startupAndBackground": MessageLookupByLibrary.simpleMessage(
      "D├йmarrage et arri├иre-plan",
    ),
    "status": MessageLookupByLibrary.simpleMessage("├Йtat"),
    "statusDesc": MessageLookupByLibrary.simpleMessage(
      "Si DNS est d├йsactiv├й, le DNS du syst├иme est utilis├й.",
    ),
    "stop": MessageLookupByLibrary.simpleMessage("Arr├кter"),
    "stopVpn": MessageLookupByLibrary.simpleMessage("Arr├кt du VPNтАж"),
    "strategy": MessageLookupByLibrary.simpleMessage("Strat├йgie"),
    "strictRoute": MessageLookupByLibrary.simpleMessage("Route stricte"),
    "strictRouteDesc": MessageLookupByLibrary.simpleMessage(
      "La route stricte emp├кche le trafic tel que le DNS de contourner TUN et, avec IPv6 d├йsactiv├й, bloque les connexions IPv6 de cet appareil.",
    ),
    "style": MessageLookupByLibrary.simpleMessage("Style"),
    "submit": MessageLookupByLibrary.simpleMessage("Valider"),
    "subscriptionInfo": MessageLookupByLibrary.simpleMessage(
      "Infos dтАЩabonnement",
    ),
    "sudoPasswordTitle": MessageLookupByLibrary.simpleMessage(
      "Saisissez votre mot de passe pour sudo",
    ),
    "suspended": MessageLookupByLibrary.simpleMessage("SuspenduтАж"),
    "switchProfile": MessageLookupByLibrary.simpleMessage("Changer de profil"),
    "sync": MessageLookupByLibrary.simpleMessage("Synchroniser"),
    "system": MessageLookupByLibrary.simpleMessage("Syst├иme"),
    "systemApp": MessageLookupByLibrary.simpleMessage("Apps syst├иme"),
    "systemProxy": MessageLookupByLibrary.simpleMessage("Proxy syst├иme"),
    "tab": MessageLookupByLibrary.simpleMessage("Onglet"),
    "tabAnimation": MessageLookupByLibrary.simpleMessage(
      "Animation des onglets",
    ),
    "tapIconToRetry": MessageLookupByLibrary.simpleMessage(
      "Appuyez sur lтАЩic├┤ne pour r├йessayer",
    ),
    "tapToAuthorize": MessageLookupByLibrary.simpleMessage(
      "Appuyez pour autoriser",
    ),
    "target": MessageLookupByLibrary.simpleMessage("Cible"),
    "tcpConcurrent": MessageLookupByLibrary.simpleMessage("TCP simultan├й"),
    "testInterval": MessageLookupByLibrary.simpleMessage("Intervalle de test"),
    "testUrl": MessageLookupByLibrary.simpleMessage("URL de test"),
    "testWhenUsed": MessageLookupByLibrary.simpleMessage(
      "Tester ├а lтАЩutilisation",
    ),
    "textScale": MessageLookupByLibrary.simpleMessage("Taille du texte"),
    "textScalePreview": MessageLookupByLibrary.simpleMessage(
      "Le texte de lтАЩapp ressemblera ├а ceci",
    ),
    "theme": MessageLookupByLibrary.simpleMessage("Th├иme"),
    "themeColor": MessageLookupByLibrary.simpleMessage("Couleur du th├иme"),
    "themeMode": MessageLookupByLibrary.simpleMessage("Mode du th├иme"),
    "tight": MessageLookupByLibrary.simpleMessage("Serr├йe"),
    "time": MessageLookupByLibrary.simpleMessage("Heure"),
    "timeout": MessageLookupByLibrary.simpleMessage("Expir├й"),
    "tintedStyle": MessageLookupByLibrary.simpleMessage("Teint├й"),
    "tip": MessageLookupByLibrary.simpleMessage("Astuce"),
    "toggle": MessageLookupByLibrary.simpleMessage("Basculer"),
    "tolerance": MessageLookupByLibrary.simpleMessage("Tol├йrance"),
    "tools": MessageLookupByLibrary.simpleMessage("Outils"),
    "torch": MessageLookupByLibrary.simpleMessage("Lampe torche"),
    "total": MessageLookupByLibrary.simpleMessage("Total"),
    "totalDownload": MessageLookupByLibrary.simpleMessage("Re├зu"),
    "totalTraffic": MessageLookupByLibrary.simpleMessage("Trafic total"),
    "totalUpload": MessageLookupByLibrary.simpleMessage("Envoy├й"),
    "tproxyPort": MessageLookupByLibrary.simpleMessage("Port TProxy"),
    "traffic": MessageLookupByLibrary.simpleMessage("Trafic"),
    "trafficPeak": m78,
    "trafficTotal": m79,
    "trafficUsage": MessageLookupByLibrary.simpleMessage("Trafic utilis├й"),
    "transport": MessageLookupByLibrary.simpleMessage("Transport"),
    "tun": MessageLookupByLibrary.simpleMessage("TUN"),
    "tunAuthorizationFailed": MessageLookupByLibrary.simpleMessage(
      "TUN nтАЩa pas pu ├кtre autoris├й et a donc ├йt├й d├йsactiv├й.",
    ),
    "tunDesc": MessageLookupByLibrary.simpleMessage(
      "TUN ne fonctionne quтАЩen mode administrateur.",
    ),
    "tunOverrideDesc": MessageLookupByLibrary.simpleMessage(
      "Les entr├йes ajout├йes ici remplacent les r├йglages TUN de tous les profils ; tout ce qui nтАЩest pas ajout├й garde le r├йglage du profil. Les entr├йes quтАЩun profil personnalis├й ajoute lui-m├кme priment.",
    ),
    "turnOff": MessageLookupByLibrary.simpleMessage("D├йsactiver"),
    "turnOn": MessageLookupByLibrary.simpleMessage("Activer"),
    "udpRelayMode": MessageLookupByLibrary.simpleMessage("Mode de relais UDP"),
    "udpTimeout": MessageLookupByLibrary.simpleMessage("D├йlai UDP"),
    "udpTimeoutDesc": MessageLookupByLibrary.simpleMessage(
      "Le d├йlai UDP est en secondes et ne fonctionne quтАЩavec les piles gvisor, system et mixed.",
    ),
    "ultra": MessageLookupByLibrary.simpleMessage("Ultra"),
    "undo": MessageLookupByLibrary.simpleMessage("Annuler"),
    "unifiedDelay": MessageLookupByLibrary.simpleMessage("D├йlai unifi├й"),
    "unknown": MessageLookupByLibrary.simpleMessage("Inconnu"),
    "unknownNetworkError": MessageLookupByLibrary.simpleMessage(
      "Erreur r├йseau inconnue",
    ),
    "unmaximize": MessageLookupByLibrary.simpleMessage("Restaurer"),
    "unnamed": MessageLookupByLibrary.simpleMessage("Sans nom"),
    "unpinWindow": MessageLookupByLibrary.simpleMessage(
      "D├йs├йpingler la fen├кtre",
    ),
    "update": MessageLookupByLibrary.simpleMessage("Mettre ├а jour"),
    "upload": MessageLookupByLibrary.simpleMessage("Envoi"),
    "uploadBandwidth": MessageLookupByLibrary.simpleMessage(
      "Bande passante dтАЩenvoi",
    ),
    "url": MessageLookupByLibrary.simpleMessage("URL"),
    "urlTip": m80,
    "useHosts": MessageLookupByLibrary.simpleMessage("Utiliser hosts"),
    "useSystemHosts": MessageLookupByLibrary.simpleMessage(
      "Utiliser les hosts du syst├иme",
    ),
    "usedShort": MessageLookupByLibrary.simpleMessage("utilis├й"),
    "usedTraffic": MessageLookupByLibrary.simpleMessage("Trafic utilis├й"),
    "userAgent": MessageLookupByLibrary.simpleMessage("User-Agent"),
    "username": MessageLookupByLibrary.simpleMessage("Nom dтАЩutilisateur"),
    "value": MessageLookupByLibrary.simpleMessage("Valeur"),
    "view": MessageLookupByLibrary.simpleMessage("Afficher"),
    "virtualIpv4": MessageLookupByLibrary.simpleMessage("IPv4 virtuelle"),
    "vividStyle": MessageLookupByLibrary.simpleMessage("Vif"),
    "vpnConfigChangeDetected": MessageLookupByLibrary.simpleMessage(
      "Modification de la configuration li├йe au VPN d├йtect├йe",
    ),
    "vpnEnableDesc": MessageLookupByLibrary.simpleMessage(
      "Le VPN fait passer automatiquement tout le trafic du syst├иme par VpnService.",
    ),
    "webDAVConfiguration": MessageLookupByLibrary.simpleMessage(
      "Configuration WebDAV",
    ),
    "whitelistMode": MessageLookupByLibrary.simpleMessage("Mode liste blanche"),
    "writeToSystem": MessageLookupByLibrary.simpleMessage(
      "├Йcrire dans le syst├иme",
    ),
    "writeToSystemDesc": MessageLookupByLibrary.simpleMessage(
      "├Йcrire dans le syst├иme r├иgle aussi lтАЩhorloge syst├иme┬а; Android lтАЩignore.",
    ),
    "yearsAgo": m81,
    "yearsAgoShort": m82,
    "yes": MessageLookupByLibrary.simpleMessage("Oui"),
    "zhCN": MessageLookupByLibrary.simpleMessage("Chinois simplifi├й"),
  };
}
