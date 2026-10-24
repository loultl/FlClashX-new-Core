// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(count, skipped) =>
      "${count} por a├▒adir, ${skipped} omitidos por ya existir";

  static String m1(detail) => "No se pudieron borrar los datos: ${detail}";

  static String m2(code) =>
      "Windows se neg├│ a ejecutar FlClashCore.exe (error ${code}). Una directiva de control de aplicaciones, como Smart App Control o AppLocker, bloquea los programas sin firmar; permite FlClash en esa directiva o desact├нvala e int├йntalo de nuevo.";

  static String m3(name) =>
      "La app no pudo terminar de iniciarse dos veces seguidas. Para romper el ciclo, se ha deseleccionado el perfil ${name} y se ha omitido la configuraci├│n autom├бtica. Puedes volver a seleccionarlo en cualquier momento.";

  static String m4(url) => "┬┐Quieres crear un perfil a partir de ${url}?";

  static String m5(count, label) =>
      "${Intl.plural(count, one: 'Se descart├│ 1 regla SUB-RULE, porque los perfiles personalizados no admiten subreglas', other: 'Se descartaron ${label} reglas SUB-RULE, porque los perfiles personalizados no admiten subreglas')}";

  static String m6(message) =>
      "El n├║cleo no puede interpretar este proxy: ${message}";

  static String m7(proxy, target) =>
      "${proxy} marca a trav├йs de ${target}, que lleva de vuelta a ${proxy}, por lo que la marcaci├│n entra en bucle";

  static String m8(name) =>
      "El nombre ${name} ya lo usa otro proxy o grupo de proxies";

  static String m9(path) =>
      "Los grupos de proxies se referencian entre s├н en bucle: ${path}";

  static String m10(name) =>
      "El respaldo si est├б vac├нo debe ser un proxy, pero ${name} no existe o es un grupo de proxies";

  static String m11(name, message) =>
      "${name} no es una expresi├│n regular v├бlida: ${message}";

  static String m12(name) => "El proxy de marcaci├│n ${name} no existe";

  static String m13(names) =>
      "Estos proveedores de proxies no existen: ${names}";

  static String m14(names) => "Estos proxies o pol├нticas no existen: ${names}";

  static String m15(name) =>
      "${name} es un nombre de pol├нtica integrada y no se puede usar aqu├н";

  static String m16(count) =>
      "${count} elementos tienen problemas, y aplicar este perfil puede fallar";

  static String m17(count) =>
      "${Intl.plural(count, one: 'hace 1 d├нa', other: 'hace ${count} d├нas')}";

  static String m18(count) => "${Intl.plural(count, other: 'hace ${count} d')}";

  static String m19(label) =>
      "┬┐Seguro que quieres eliminar los elementos seleccionados (${label})?";

  static String m20(label) =>
      "┬┐Seguro que quieres eliminar este elemento (${label})?";

  static String m21(label) => "Detalles de ${label}";

  static String m22(name) =>
      "La marcaci├│n a trav├йs de ${name} lleva de vuelta al proxy que lo usa, por lo que se detuvo la conexi├│n";

  static String m23(label) => "${label} no puede estar vac├нo";

  static String m24(label) => "${label} ya existe";

  static String m25(count) => "${count} elementos fallaron";

  static String m26(label, message) => "${label}: ${message}";

  static String m27(name) => "${name} ya est├б actualizado";

  static String m28(name) => "${name} actualizado";

  static String m29(count) =>
      "${Intl.plural(count, one: '1 grupo', other: '${count} grupos')}";

  static String m30(count) => "${count} sin respuesta";

  static String m31(action) =>
      "Ya lo usa тАЬ${action}тАЭ. Al guardar, pasar├б a este.";

  static String m32(modifiers) =>
      "Incluye al menos una de estas teclas: ${modifiers}";

  static String m33(count) =>
      "${Intl.plural(count, one: 'hace 1 hora', other: 'hace ${count} horas')}";

  static String m34(count) => "${Intl.plural(count, other: 'hace ${count} h')}";

  static String m35(target) => "${target} no es una pol├нtica v├бlida";

  static String m36(proxyName) => "${proxyName} no es un proxy v├бlido";

  static String m37(providerName) =>
      "${providerName} no es un proveedor de proxies v├бlido";

  static String m38(ruleSet) =>
      "${ruleSet} no es un conjunto de reglas v├бlido";

  static String m39(subRule) => "${subRule} no es una SUB_RULE v├бlida";

  static String m40(count) =>
      "${Intl.plural(count, one: '1 elemento', other: '${count} elementos')}";

  static String m41(line, message) => "L├нnea ${line}: ${message}";

  static String m42(appName) =>
      "1. Abre Ajustes del sistema > Privacidad y seguridad\n2. Elige Servicios de localizaci├│n\n3. Busca ${appName} en la lista y m├бrcalo\n\nCuando termines, vuelve a la app para continuar. Gracias por tu colaboraci├│n.";

  static String m43(label, max) =>
      "${label} debe tener como m├бximo ${max} caracteres";

  static String m44(size) => "Liberado: ${size}";

  static String m45(count) =>
      "${Intl.plural(count, one: 'hace 1 minuto', other: 'hace ${count} minutos')}";

  static String m46(count) =>
      "${Intl.plural(count, other: 'hace ${count} min')}";

  static String m47(count) =>
      "${Intl.plural(count, one: 'hace 1 mes', other: 'hace ${count} meses')}";

  static String m48(count) => "${Intl.plural(count, other: 'hace ${count} m')}";

  static String m49(code) =>
      "El servidor deneg├│ el acceso (HTTP ${code}). Puede que el enlace haya caducado o que las credenciales sean incorrectas";

  static String m50(code) => "El servidor rechaz├│ la solicitud (HTTP ${code})";

  static String m51(code) =>
      "No se encontr├│ nada en esta direcci├│n (HTTP ${code}). Comprueba que la URL sea correcta";

  static String m52(detail) => "Fall├│ la solicitud de red: ${detail}";

  static String m53(code) =>
      "El servidor tuvo un problema (HTTP ${code}). Int├йntalo de nuevo m├бs tarde";

  static String m54(label) => "A├║n no hay ning├║n elemento (${label})";

  static String m55(label, min, max) =>
      "${label} debe estar entre ${min} y ${max}";

  static String m56(label) => "${label} debe ser un n├║mero";

  static String m57(label) => "${label} debe estar entre 1024 y 49151";

  static String m58(port) => "Puerto ${port}";

  static String m59(days) =>
      "${Intl.plural(days, one: 'Queda 1 d├нa', other: 'Quedan ${days} d├нas')}";

  static String m60(date, days) =>
      "Vence el ${date}, ${Intl.plural(days, one: 'queda 1 d├нa', other: 'quedan ${days} d├нas')}";

  static String m61(time) => "Actualizado ${time}";

  static String m62(label, profiles) =>
      "${label} sigue en uso en ${profiles}, que dejar├бn de funcionar correctamente si se elimina. ┬┐Seguro que quieres eliminarlo?";

  static String m63(count, label) =>
      "${Intl.plural(count, one: '1 proxy', other: '${label} proxies')}";

  static String m64(name, count) => "${name} y otros (${count} proxies)";

  static String m65(removed) =>
      "Se eliminar├бn estos proxies: ${removed}. Una l├нnea cuyo nombre cambi├│ cuenta como un proxy nuevo, y los perfiles personalizados que mencionen los eliminados los marcar├бn como ausentes. ┬┐Aplicar de todos modos?";

  static String m66(removed, added) =>
      "Se eliminar├бn estos proxies: ${removed}. Se a├▒adir├бn estos: ${added}. Una l├нnea cuyo nombre cambi├│ cuenta como un proxy nuevo, y los perfiles personalizados que mencionen los eliminados los marcar├бn como ausentes. ┬┐Aplicar de todos modos?";

  static String m67(label) =>
      "${label} sigue mencionado por reglas, grupos de proxies, proxies de marcaci├│n, DNS o NTP de este perfil, que dejar├бn de funcionar si se elimina. ┬┐Seguro que quieres eliminarlo?";

  static String m68(count, label) =>
      "${Intl.plural(count, one: '1 grupo de proxies', other: '${label} grupos de proxies')}";

  static String m69(count, label) =>
      "${Intl.plural(count, one: '1 regla', other: '${label} reglas')}";

  static String m70(appName) => "${appName} (Modo seguro)";

  static String m71(count) =>
      "${Intl.plural(count, one: '1 segundo', other: '${count} segundos')}";

  static String m72(count) => "${count} en vigor";

  static String m73(count) =>
      "${Intl.plural(count, one: '1 problema', other: '${count} problemas')}";

  static String m74(time) => "Comprobado a las ${time}";

  static String m75(count) =>
      "${Intl.plural(count, one: '1 ajuste', other: '${count} ajustes')}";

  static String m76(link) => "No se pudo leer ning├║n proxy de ${link}";

  static String m77(label) => "${label} debe ser un solo elemento";

  static String m78(value) => "Pico: ${value}";

  static String m79(value) => "Total: ${value}";

  static String m80(label) => "${label} debe ser una URL";

  static String m81(count) =>
      "${Intl.plural(count, one: 'hace 1 a├▒o', other: 'hace ${count} a├▒os')}";

  static String m82(count) => "${Intl.plural(count, other: 'hace ${count} a')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about": MessageLookupByLibrary.simpleMessage("Acerca de"),
    "accessControl": MessageLookupByLibrary.simpleMessage("Control de acceso"),
    "accessControlAllowDesc": MessageLookupByLibrary.simpleMessage(
      "Solo las apps seleccionadas usan la VPN",
    ),
    "accessControlDesc": MessageLookupByLibrary.simpleMessage(
      "El control de acceso elige qu├й apps usan el proxy.",
    ),
    "accessControlDisabledDesc": MessageLookupByLibrary.simpleMessage(
      "El control de acceso de apps est├б desactivado",
    ),
    "accessControlNotAllowDesc": MessageLookupByLibrary.simpleMessage(
      "Las apps seleccionadas quedan excluidas de la VPN",
    ),
    "accessControlSettings": MessageLookupByLibrary.simpleMessage(
      "Ajustes de control de acceso",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Cuenta"),
    "action": MessageLookupByLibrary.simpleMessage("Acci├│n"),
    "actionDelayTest": MessageLookupByLibrary.simpleMessage(
      "Probar la latencia de todos",
    ),
    "actionDirectMode": MessageLookupByLibrary.simpleMessage("Modo directo"),
    "actionGlobalMode": MessageLookupByLibrary.simpleMessage("Modo global"),
    "actionMode": MessageLookupByLibrary.simpleMessage("Cambiar modo"),
    "actionProxy": MessageLookupByLibrary.simpleMessage("Proxy del sistema"),
    "actionRuleMode": MessageLookupByLibrary.simpleMessage("Modo regla"),
    "actionStart": MessageLookupByLibrary.simpleMessage("Iniciar/Detener"),
    "actionTun": MessageLookupByLibrary.simpleMessage("TUN"),
    "actionUpdateProfiles": MessageLookupByLibrary.simpleMessage(
      "Actualizar perfiles",
    ),
    "actionView": MessageLookupByLibrary.simpleMessage("Mostrar/Ocultar"),
    "add": MessageLookupByLibrary.simpleMessage("A├▒adir"),
    "addCustomProxy": MessageLookupByLibrary.simpleMessage("A├▒adir proxy"),
    "addFilters": MessageLookupByLibrary.simpleMessage("A├▒adir filtros"),
    "addNodes": MessageLookupByLibrary.simpleMessage("A├▒adir nodos"),
    "addOverrideEntry": MessageLookupByLibrary.simpleMessage(
      "A├▒adir entrada de sobrescritura",
    ),
    "addProfile": MessageLookupByLibrary.simpleMessage("A├▒adir perfil"),
    "addProxyGroup": MessageLookupByLibrary.simpleMessage(
      "A├▒adir grupo de proxies",
    ),
    "addRule": MessageLookupByLibrary.simpleMessage("A├▒adir regla"),
    "addSettingEntry": MessageLookupByLibrary.simpleMessage("A├▒adir ajuste"),
    "addSsid": MessageLookupByLibrary.simpleMessage("A├▒adir SSID"),
    "addedRules": MessageLookupByLibrary.simpleMessage("Reglas a├▒adidas"),
    "additionalParameters": MessageLookupByLibrary.simpleMessage(
      "Par├бmetros adicionales",
    ),
    "additionalPrefix": MessageLookupByLibrary.simpleMessage(
      "Prefijo del nombre",
    ),
    "additionalSuffix": MessageLookupByLibrary.simpleMessage(
      "Sufijo del nombre",
    ),
    "address": MessageLookupByLibrary.simpleMessage("Direcci├│n"),
    "addressHelp": MessageLookupByLibrary.simpleMessage(
      "Direcci├│n del servidor WebDAV",
    ),
    "addressTip": MessageLookupByLibrary.simpleMessage(
      "Introduce una direcci├│n WebDAV v├бlida",
    ),
    "advancedConfig": MessageLookupByLibrary.simpleMessage(
      "Configuraci├│n avanzada",
    ),
    "advancedConfigDesc": MessageLookupByLibrary.simpleMessage(
      "La configuraci├│n avanzada incluye la red, el DNS, las reglas a├▒adidas y los scripts.",
    ),
    "ageEncryptedProfile": MessageLookupByLibrary.simpleMessage(
      "Perfil cifrado",
    ),
    "ageSecretKey": MessageLookupByLibrary.simpleMessage(
      "Clave secreta de age",
    ),
    "ageSecretKeyRequiredTip": MessageLookupByLibrary.simpleMessage(
      "Este perfil est├б cifrado con age y necesita una clave secreta de age para descifrarse",
    ),
    "agree": MessageLookupByLibrary.simpleMessage("Aceptar"),
    "allReferencedProxies": MessageLookupByLibrary.simpleMessage(
      "Todos los proxies referenciados",
    ),
    "allReferencedProxyProviders": MessageLookupByLibrary.simpleMessage(
      "Todos los proveedores de proxies referenciados",
    ),
    "allowBypass": MessageLookupByLibrary.simpleMessage(
      "Permitir que las apps eludan la VPN",
    ),
    "allowLan": MessageLookupByLibrary.simpleMessage("Permitir LAN"),
    "allowedIps": MessageLookupByLibrary.simpleMessage("IP permitidas"),
    "answers": MessageLookupByLibrary.simpleMessage("Respuestas"),
    "app": MessageLookupByLibrary.simpleMessage("App"),
    "appAccessControl": MessageLookupByLibrary.simpleMessage(
      "Control de acceso de apps",
    ),
    "appIconDesign": MessageLookupByLibrary.simpleMessage(
      "Dise├▒o del icono de la app",
    ),
    "appProxiesEmpty": MessageLookupByLibrary.simpleMessage(
      "No hay proxies locales",
    ),
    "appendSystemDns": MessageLookupByLibrary.simpleMessage(
      "A├▒adir DNS del sistema",
    ),
    "authentication": MessageLookupByLibrary.simpleMessage("Autenticaci├│n"),
    "authenticationDesc": MessageLookupByLibrary.simpleMessage(
      "La autenticaci├│n pide usuario y contrase├▒a en el puerto del proxy local.",
    ),
    "authenticationSystemProxyDesc": MessageLookupByLibrary.simpleMessage(
      "El proxy del sistema no se aplica mientras la autenticaci├│n est├й activada.",
    ),
    "authorize": MessageLookupByLibrary.simpleMessage("Autorizar"),
    "authorized": MessageLookupByLibrary.simpleMessage("Autorizado"),
    "auto": MessageLookupByLibrary.simpleMessage("Autom├бtico"),
    "autoCheckUpdate": MessageLookupByLibrary.simpleMessage(
      "Buscar actualizaciones autom├бticamente",
    ),
    "autoCloseConnections": MessageLookupByLibrary.simpleMessage(
      "Cerrar conexiones autom├бticamente",
    ),
    "autoCloseConnectionsDesc": MessageLookupByLibrary.simpleMessage(
      "Cerrar conexiones autom├бticamente corta las conexiones abiertas al cambiar de proxy.",
    ),
    "autoInclude": MessageLookupByLibrary.simpleMessage(
      "Incluir autom├бticamente",
    ),
    "autoLaunch": MessageLookupByLibrary.simpleMessage("Inicio autom├бtico"),
    "autoRun": MessageLookupByLibrary.simpleMessage("Ejecuci├│n autom├бtica"),
    "autoRunDesc": MessageLookupByLibrary.simpleMessage(
      "La ejecuci├│n autom├бtica inicia el proxy al abrir la app.",
    ),
    "autoSetSystemDns": MessageLookupByLibrary.simpleMessage(
      "Configurar DNS del sistema autom├бticamente",
    ),
    "autoUpdate": MessageLookupByLibrary.simpleMessage(
      "Actualizaci├│n autom├бtica",
    ),
    "autoUpdateInterval": MessageLookupByLibrary.simpleMessage(
      "Intervalo de actualizaci├│n autom├бtica",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Atr├бs"),
    "backup": MessageLookupByLibrary.simpleMessage("Copia de seguridad"),
    "backupAndRestore": MessageLookupByLibrary.simpleMessage(
      "Copia de seguridad y restauraci├│n",
    ),
    "backupFromNewerVersion": MessageLookupByLibrary.simpleMessage(
      "Esta copia de seguridad procede de una versi├│n m├бs reciente de la app. Actualiza la app antes de restaurarla",
    ),
    "backupSuccess": MessageLookupByLibrary.simpleMessage(
      "Copia de seguridad completada",
    ),
    "basicInfo": MessageLookupByLibrary.simpleMessage("Informaci├│n b├бsica"),
    "basicStrategy": MessageLookupByLibrary.simpleMessage(
      "Estrategias b├бsicas",
    ),
    "batchAdd": MessageLookupByLibrary.simpleMessage("A├▒adir en lote"),
    "batchImport": MessageLookupByLibrary.simpleMessage("Importar en lote"),
    "batchLinkInputTip": MessageLookupByLibrary.simpleMessage(
      "Un enlace por l├нnea",
    ),
    "batchListInputTip": MessageLookupByLibrary.simpleMessage(
      "Un elemento por l├нnea, o separados por comas",
    ),
    "batchMapInputTip": MessageLookupByLibrary.simpleMessage(
      "Una entrada por l├нnea: clave, un espacio y el valor",
    ),
    "batchPreviewTip": m0,
    "batchUrlInputTip": MessageLookupByLibrary.simpleMessage(
      "Una URL por l├нnea",
    ),
    "batteryOptimizationDesc": MessageLookupByLibrary.simpleMessage(
      "Ignorar la optimizaci├│n de bater├нa mantiene la app en ejecuci├│n en segundo plano.",
    ),
    "bind": MessageLookupByLibrary.simpleMessage("Vincular"),
    "blacklistMode": MessageLookupByLibrary.simpleMessage("Modo lista negra"),
    "blockConnection": MessageLookupByLibrary.simpleMessage(
      "Bloquear conexi├│n",
    ),
    "brightness": MessageLookupByLibrary.simpleMessage("Brillo"),
    "bypassDomain": MessageLookupByLibrary.simpleMessage("Dominios excluidos"),
    "bypassDomainDesc": MessageLookupByLibrary.simpleMessage(
      "Los dominios excluidos solo se aplican mientras el proxy del sistema est├й activado.",
    ),
    "bypassPrivateRoute": MessageLookupByLibrary.simpleMessage(
      "Omitir direcciones privadas",
    ),
    "bypassPrivateRouteDesc": MessageLookupByLibrary.simpleMessage(
      "Con Omitir direcciones privadas activado, las direcciones de LAN, loopback y multidifusi├│n no pasan por TUN.",
    ),
    "cache": MessageLookupByLibrary.simpleMessage("Cach├й"),
    "cacheAlgorithm": MessageLookupByLibrary.simpleMessage(
      "Algoritmo de cach├й",
    ),
    "cacheCorrupt": MessageLookupByLibrary.simpleMessage(
      "La cach├й est├б da├▒ada. ┬┐Borrarla?",
    ),
    "cacheMaxSize": MessageLookupByLibrary.simpleMessage("Tama├▒o de cach├й"),
    "cameraPermissionDesc": MessageLookupByLibrary.simpleMessage(
      "Permite el acceso a la c├бmara en los ajustes del sistema para escanear c├│digos QR, o elige una imagen de c├│digo QR del ├бlbum.",
    ),
    "cameraPermissionRequired": MessageLookupByLibrary.simpleMessage(
      "Se requiere permiso de c├бmara",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "C├бmara no disponible",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
    "cancelSelectAll": MessageLookupByLibrary.simpleMessage(
      "Deseleccionar todo",
    ),
    "cannotSave": MessageLookupByLibrary.simpleMessage("No se puede guardar"),
    "changeProxyFailedTip": MessageLookupByLibrary.simpleMessage(
      "No se pudo cambiar de proxy; se ha restaurado la selecci├│n anterior",
    ),
    "changelogBreaking": MessageLookupByLibrary.simpleMessage(
      "Cambios incompatibles",
    ),
    "changelogFeatures": MessageLookupByLibrary.simpleMessage("Novedades"),
    "changelogFixes": MessageLookupByLibrary.simpleMessage("Correcciones"),
    "changelogPerformance": MessageLookupByLibrary.simpleMessage("Rendimiento"),
    "changelogReverts": MessageLookupByLibrary.simpleMessage("Reversiones"),
    "checkCertificate": MessageLookupByLibrary.simpleMessage(
      "Verificar certificados TLS",
    ),
    "checkCertificateDesc": MessageLookupByLibrary.simpleMessage(
      "Con la verificaci├│n TLS desactivada, las suscripciones y las copias de seguridad quedan expuestas a ataques de intermediario.",
    ),
    "checkUpdate": MessageLookupByLibrary.simpleMessage(
      "Buscar actualizaciones",
    ),
    "checkUpdateError": MessageLookupByLibrary.simpleMessage(
      "La app ya est├б actualizada",
    ),
    "cipher": MessageLookupByLibrary.simpleMessage("Cifrado"),
    "clearData": MessageLookupByLibrary.simpleMessage("Borrar datos"),
    "clearDataAndExitTip": MessageLookupByLibrary.simpleMessage(
      "Esto elimina todos los perfiles, ajustes y datos locales, y luego cierra la app. ├Бbrela de nuevo para empezar de cero.",
    ),
    "clearDataFailed": m1,
    "clearSearch": MessageLookupByLibrary.simpleMessage("Borrar b├║squeda"),
    "clientFingerprint": MessageLookupByLibrary.simpleMessage(
      "Huella del cliente",
    ),
    "clipboardExport": MessageLookupByLibrary.simpleMessage(
      "Exportar al portapapeles",
    ),
    "clipboardImport": MessageLookupByLibrary.simpleMessage(
      "Importar desde el portapapeles",
    ),
    "clipboardWriteFailed": MessageLookupByLibrary.simpleMessage(
      "No se pudo copiar al portapapeles. Puede que la selecci├│n sea demasiado grande",
    ),
    "close": MessageLookupByLibrary.simpleMessage("Cerrar"),
    "closeConnections": MessageLookupByLibrary.simpleMessage(
      "Cerrar conexiones",
    ),
    "color": MessageLookupByLibrary.simpleMessage("Color"),
    "colorStyle": MessageLookupByLibrary.simpleMessage("Estilo de color"),
    "columns": MessageLookupByLibrary.simpleMessage("Columnas"),
    "compact": MessageLookupByLibrary.simpleMessage("Compacto"),
    "compatible": MessageLookupByLibrary.simpleMessage(
      "Modo de compatibilidad",
    ),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirmar"),
    "confirmClearAllData": MessageLookupByLibrary.simpleMessage(
      "┬┐Seguro que quieres borrar todos los datos?",
    ),
    "confirmDeleteProxyGroup": MessageLookupByLibrary.simpleMessage(
      "┬┐Seguro que quieres eliminar este grupo de proxies?",
    ),
    "confirmExitWindow": MessageLookupByLibrary.simpleMessage(
      "┬┐Seguro que quieres salir de la ventana actual?",
    ),
    "confirmForceCrashCore": MessageLookupByLibrary.simpleMessage(
      "┬┐Seguro que quieres forzar el fallo del n├║cleo?",
    ),
    "congestionControl": MessageLookupByLibrary.simpleMessage(
      "Control de congesti├│n",
    ),
    "congestionController": MessageLookupByLibrary.simpleMessage(
      "Control de congesti├│n TCP",
    ),
    "congestionControllerDesc": MessageLookupByLibrary.simpleMessage(
      "El control de congesti├│n TCP solo funciona con la pila mips.",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Conectado"),
    "connecting": MessageLookupByLibrary.simpleMessage("ConectandoтАж"),
    "connection": MessageLookupByLibrary.simpleMessage("Conexi├│n"),
    "connectionStats": MessageLookupByLibrary.simpleMessage(
      "Estad├нsticas de conexi├│n",
    ),
    "connectionStatsDesc": MessageLookupByLibrary.simpleMessage(
      "Conexiones activas, solicitudes recientes y consultas DNS",
    ),
    "connections": MessageLookupByLibrary.simpleMessage("Conexiones"),
    "connectivity": MessageLookupByLibrary.simpleMessage("Conectividad: "),
    "content": MessageLookupByLibrary.simpleMessage("Contenido"),
    "contentNotEmpty": MessageLookupByLibrary.simpleMessage(
      "El contenido no puede estar vac├нo",
    ),
    "controlGlobalAddedRules": MessageLookupByLibrary.simpleMessage(
      "Controlar las reglas a├▒adidas globales",
    ),
    "copy": MessageLookupByLibrary.simpleMessage("Copiar"),
    "copyEnvVar": MessageLookupByLibrary.simpleMessage(
      "Copiar variables de entorno",
    ),
    "copyLink": MessageLookupByLibrary.simpleMessage("Copiar enlace"),
    "copySuccess": MessageLookupByLibrary.simpleMessage(
      "Copiado correctamente",
    ),
    "core": MessageLookupByLibrary.simpleMessage("N├║cleo"),
    "coreBlockedByPolicyTip": m2,
    "coreBlockedBySmartAppControlTip": MessageLookupByLibrary.simpleMessage(
      "Smart App Control de Windows bloque├│ FlClashCore.exe porque no est├б firmado. Abre Seguridad de Windows тЖТ Control de aplicaciones y navegador тЖТ Configuraci├│n de Smart App Control, elige Desactivado y vuelve a iniciar FlClash. Smart App Control no se puede volver a activar sin reinstalar Windows.",
    ),
    "coreCertificateChecksAlwaysEnabled": MessageLookupByLibrary.simpleMessage(
      "Las descargas del n├║cleo siempre verifican los certificados. Este ajuste se aplica a las descargas de la aplicaci├│n.",
    ),
    "coreFeatureUnavailable": MessageLookupByLibrary.simpleMessage(
      "El n├║cleo actual no admite esta funci├│n.",
    ),
    "coreStatus": MessageLookupByLibrary.simpleMessage("Estado del n├║cleo"),
    "country": MessageLookupByLibrary.simpleMessage("Regi├│n"),
    "crashDetected": MessageLookupByLibrary.simpleMessage("Fallo detectado"),
    "crashDetectedTip": m3,
    "crashTest": MessageLookupByLibrary.simpleMessage("Prueba de fallo"),
    "create": MessageLookupByLibrary.simpleMessage("Crear"),
    "createProfileFromUrlTip": m4,
    "creationTime": MessageLookupByLibrary.simpleMessage("Fecha de creaci├│n"),
    "currentOutboundDesc": MessageLookupByLibrary.simpleMessage(
      "Contiene el bot├│n de inicio y no se puede quitar",
    ),
    "custom": MessageLookupByLibrary.simpleMessage("Personalizado"),
    "customColor": MessageLookupByLibrary.simpleMessage("Color personalizado"),
    "customImportDroppedSubRules": m5,
    "customIssueCoreRejected": m6,
    "customIssueDialerLoop": m7,
    "customIssueDuplicateName": m8,
    "customIssueEmptyName": MessageLookupByLibrary.simpleMessage(
      "El nombre est├б vac├нo",
    ),
    "customIssueGroupLoop": m9,
    "customIssueInvalidEmptyFallback": m10,
    "customIssueInvalidFilter": m11,
    "customIssueMissingDialer": m12,
    "customIssueMissingProviders": m13,
    "customIssueMissingProxies": m14,
    "customIssueNoProxySource": MessageLookupByLibrary.simpleMessage(
      "No hay proxies ni proveedores de proxies seleccionados, por lo que el n├║cleo rechaza este grupo",
    ),
    "customIssueReservedName": m15,
    "customIssuesSummary": m16,
    "customProfile": MessageLookupByLibrary.simpleMessage("Personalizado"),
    "customProfileDesc": MessageLookupByLibrary.simpleMessage(
      "Crea grupos de proxies y reglas a partir de los proxies de la app y de otros perfiles",
    ),
    "customProfileResources": MessageLookupByLibrary.simpleMessage(
      "Recursos de perfil personalizado",
    ),
    "customProfileResourcesDesc": MessageLookupByLibrary.simpleMessage(
      "Los recursos de perfil personalizado incluyen proxies, proveedores de reglas, filtros y conjuntos de iconos.",
    ),
    "cut": MessageLookupByLibrary.simpleMessage("Cortar"),
    "dark": MessageLookupByLibrary.simpleMessage("Oscuro"),
    "dashboard": MessageLookupByLibrary.simpleMessage("Panel"),
    "dashboardAddableSection": MessageLookupByLibrary.simpleMessage(
      "Disponibles para a├▒adir",
    ),
    "databaseWriteFailedTip": MessageLookupByLibrary.simpleMessage(
      "No se pudo guardar el cambio; se ha revertido",
    ),
    "daysAgo": m17,
    "daysAgoShort": m18,
    "defaultSelected": MessageLookupByLibrary.simpleMessage(
      "Selecci├│n predeterminada",
    ),
    "defaultText": MessageLookupByLibrary.simpleMessage("Predeterminado"),
    "definitionNotMap": MessageLookupByLibrary.simpleMessage(
      "La configuraci├│n debe ser un mapa YAML con un nombre y un tipo",
    ),
    "delay": MessageLookupByLibrary.simpleMessage("Latencia"),
    "delayFailed": MessageLookupByLibrary.simpleMessage("Fallido"),
    "delayTest": MessageLookupByLibrary.simpleMessage("Prueba de latencia"),
    "delete": MessageLookupByLibrary.simpleMessage("Eliminar"),
    "deleteMultipTip": m19,
    "deleteTip": m20,
    "desc": MessageLookupByLibrary.simpleMessage(
      "Un cliente proxy multiplataforma basado en ClashMeta, sencillo de usar, de c├│digo abierto y sin anuncios.",
    ),
    "destination": MessageLookupByLibrary.simpleMessage("Destino"),
    "destinationGeoIP": MessageLookupByLibrary.simpleMessage(
      "GeoIP de destino",
    ),
    "destinationIPASN": MessageLookupByLibrary.simpleMessage(
      "ASN de la IP de destino",
    ),
    "details": m21,
    "detectionTip": MessageLookupByLibrary.simpleMessage(
      "Depende de una API de terceros; solo con fines informativos",
    ),
    "developerMode": MessageLookupByLibrary.simpleMessage("Modo desarrollador"),
    "developerModeEnableTip": MessageLookupByLibrary.simpleMessage(
      "El modo desarrollador est├б activado.",
    ),
    "dialerProxy": MessageLookupByLibrary.simpleMessage("Proxy de marcaci├│n"),
    "dialerProxyDesc": MessageLookupByLibrary.simpleMessage(
      "El proxy de marcaci├│n es la salida que se usa para llegar al servidor NTP.",
    ),
    "dialerProxyLoopStopped": m22,
    "direct": MessageLookupByLibrary.simpleMessage("Directo"),
    "disableIcmpForwarding": MessageLookupByLibrary.simpleMessage(
      "Desactivar reenv├нo ICMP",
    ),
    "disableIcmpForwardingDesc": MessageLookupByLibrary.simpleMessage(
      "Con el reenv├нo ICMP desactivado, TUN responde ├йl mismo al ping, por lo que ping ya no muestra la latencia real.",
    ),
    "disableKeepAlive": MessageLookupByLibrary.simpleMessage(
      "Desactivar keep-alive TCP",
    ),
    "disableUDP": MessageLookupByLibrary.simpleMessage("Desactivar UDP"),
    "disabled": MessageLookupByLibrary.simpleMessage("Desactivado"),
    "discardChanges": MessageLookupByLibrary.simpleMessage(
      "┬┐Descartar los cambios?",
    ),
    "disclaimer": MessageLookupByLibrary.simpleMessage("Aviso legal"),
    "disclaimerAcceptContent": MessageLookupByLibrary.simpleMessage(
      "Al instalar, copiar o usar el Software, se considera que has le├нdo y aceptado esta declaraci├│n en su totalidad. Si no est├бs de acuerdo con alguno de sus t├йrminos, deja de usar el Software y desinst├бlalo de inmediato.",
    ),
    "disclaimerAcceptTitle": MessageLookupByLibrary.simpleMessage(
      "Aceptaci├│n",
    ),
    "disclaimerAcknowledgeLabel": MessageLookupByLibrary.simpleMessage(
      "He le├нdo y entiendo esta declaraci├│n",
    ),
    "disclaimerAcknowledgeTip": MessageLookupByLibrary.simpleMessage(
      "Para confirmar que lo entiendes, lee la siguiente declaraci├│n y marca la casilla de abajo:",
    ),
    "disclaimerAcknowledgeTitle": MessageLookupByLibrary.simpleMessage(
      "Confirma la declaraci├│n",
    ),
    "disclaimerChangesContent": MessageLookupByLibrary.simpleMessage(
      "Los desarrolladores pueden revisar esta declaraci├│n con cualquier versi├│n, y la revisi├│n entra en vigor cuando se publique dicha versi├│n. Seguir usando el Software despu├йs de actualizar implica que aceptas la declaraci├│n revisada.",
    ),
    "disclaimerChangesTitle": MessageLookupByLibrary.simpleMessage(
      "Cambios en esta declaraci├│n",
    ),
    "disclaimerDesc": MessageLookupByLibrary.simpleMessage(
      "Antes de usar FlClash (тАЬel SoftwareтАЭ), lee con atenci├│n esta declaraci├│n y aseg├║rate de entenderla por completo. Pulsar тАЬAceptarтАЭ significa que has le├нdo, comprendido y aceptado todos los t├йrminos siguientes. Si no est├бs de acuerdo, pulsa тАЬSalirтАЭ y deja de usar el Software.",
    ),
    "disclaimerLiabilityContent": MessageLookupByLibrary.simpleMessage(
      "En la m├бxima medida permitida por la ley aplicable, ni los desarrolladores ni ning├║n colaborador ser├бn responsables de ning├║n da├▒o directo, indirecto, incidental, especial, punitivo o emergente derivado del uso o de la imposibilidad de usar el Software, incluidos, entre otros, la p├йrdida de datos, los da├▒os al dispositivo, los fallos de red, la interrupci├│n de la actividad, el lucro cesante o cualquier disputa legal resultante, incluso si se les hubiera advertido de la posibilidad de tales da├▒os.",
    ),
    "disclaimerLiabilityTitle": MessageLookupByLibrary.simpleMessage(
      "Limitaci├│n de responsabilidad",
    ),
    "disclaimerLicenseContent": MessageLookupByLibrary.simpleMessage(
      "El Software es de c├│digo abierto bajo la licencia GPL-3.0. Puedes usarlo, modificarlo y distribuirlo libremente siempre que cumplas dicha licencia, que exige que las obras derivadas se publiquen tambi├йn bajo GPL-3.0 y que se conserven los avisos de derechos de autor originales.\n\nLos componentes de terceros del Software, incluido el n├║cleo Clash.Meta, siguen sus propias licencias. Los autores originales no se hacen responsables de ning├║n problema derivado de versiones modificadas o redistribuidas.",
    ),
    "disclaimerLicenseTitle": MessageLookupByLibrary.simpleMessage(
      "Licencia de c├│digo abierto",
    ),
    "disclaimerNoServiceStatement": MessageLookupByLibrary.simpleMessage(
      "El Software en s├н no proporciona ning├║n servidor proxy, nodo, suscripci├│n ni servicio de acceso a la red, y no mantiene ninguna relaci├│n de asociaci├│n, representaci├│n ni garant├нa con ning├║n proveedor de dichos servicios.",
    ),
    "disclaimerPrivacyContent": MessageLookupByLibrary.simpleMessage(
      "El Software no recopila ni sube tus URL de suscripci├│n, los detalles de los nodos, el contenido de las configuraciones, los sitios web visitados, los registros de conexi├│n, el contenido del tr├бfico ni los registros. Estos datos permanecen en tu dispositivo y los desarrolladores no tienen acceso a ellos.\n\nEl Software solo accede a la red cuando usas una funci├│n que lo necesita, como obtener la URL de suscripci├│n que indicaste al actualizar un perfil o conectarse a GitHub al buscar actualizaciones.\n\nEl Software no incluye ning├║n servicio de anal├нtica ni de informes de fallos en ninguna plataforma.",
    ),
    "disclaimerPrivacyTitle": MessageLookupByLibrary.simpleMessage(
      "Recopilaci├│n de datos y privacidad",
    ),
    "disclaimerResponsibilityContent": MessageLookupByLibrary.simpleMessage(
      "Eres responsable de asegurarte de que el uso del Software sea legal donde vives, y asumes t├║ solo la responsabilidad legal de todo lo que hagas con ├йl y de sus consecuencias.\n\nLas suscripciones, los nodos y las configuraciones que importas son decisi├│n tuya. Que su origen sea legal, su contenido seguro y su servicio fiable es un asunto entre t├║ y sus proveedores.",
    ),
    "disclaimerResponsibilityTitle": MessageLookupByLibrary.simpleMessage(
      "Tu responsabilidad",
    ),
    "disclaimerRestateHint": MessageLookupByLibrary.simpleMessage(
      "Escribe la declaraci├│n anterior",
    ),
    "disclaimerRestateMismatch": MessageLookupByLibrary.simpleMessage(
      "No coincide con la declaraci├│n",
    ),
    "disclaimerRestateTip": MessageLookupByLibrary.simpleMessage(
      "Para confirmar que lo entiendes, escribe la siguiente declaraci├│n completa en el campo de abajo:",
    ),
    "disclaimerRestateTitle": MessageLookupByLibrary.simpleMessage(
      "Repite la declaraci├│n",
    ),
    "disclaimerSoftwareContent": MessageLookupByLibrary.simpleMessage(
      "El Software es un cliente proxy de red de c├│digo abierto basado en el n├║cleo Clash.Meta (mihomo). Solo ofrece herramientas locales como la gesti├│n de configuraci├│n, el enrutamiento basado en reglas y el reenv├нo de tr├бfico.",
    ),
    "disclaimerSoftwareTitle": MessageLookupByLibrary.simpleMessage(
      "Naturaleza del software",
    ),
    "disclaimerThirdPartyContent": MessageLookupByLibrary.simpleMessage(
      "Los enlaces de suscripci├│n, los archivos de configuraci├│n, los conjuntos de reglas, los scripts, los recursos externos y los enlaces externos los proporcionan terceros. Los desarrolladores no pueden revisar ni garantizar, ni lo hacen, su legalidad, exactitud, seguridad o disponibilidad.\n\nCualquier fuga de datos, p├йrdida econ├│mica, bloqueo de cuenta u otra p├йrdida causada por contenido de terceros debe resolverse entre t├║ y el tercero; los desarrolladores no asumen ninguna responsabilidad por ello.",
    ),
    "disclaimerThirdPartyTitle": MessageLookupByLibrary.simpleMessage(
      "Contenido de terceros",
    ),
    "disclaimerUsageContent": MessageLookupByLibrary.simpleMessage(
      "El Software est├б destinado ├║nicamente a usos no comerciales, como el aprendizaje, el intercambio y la investigaci├│n t├йcnica. Queda estrictamente prohibido usarlo con cualquier fin comercial, incluidos, entre otros, la distribuci├│n de pago, la venta en paquete, su uso como parte de un servicio comercial o hacer negocio en nombre del Software. Cualquier actividad comercial no guarda relaci├│n con el Software ni con sus desarrolladores.\n\nQueda estrictamente prohibido usar el Software para cualquier fin que infrinja las leyes y normativas de tu pa├нs o regi├│n, incluidos, entre otros, eludir restricciones de acceso a la red impuestas legalmente, difundir contenido ilegal, lanzar ataques a la red o vulnerar los derechos leg├нtimos de otras personas.",
    ),
    "disclaimerUsageTitle": MessageLookupByLibrary.simpleMessage(
      "Restricciones de uso",
    ),
    "disclaimerWarrantyContent": MessageLookupByLibrary.simpleMessage(
      "El Software se proporciona тАЬtal cualтАЭ y тАЬseg├║n disponibilidadтАЭ, sin garant├нa de ning├║n tipo, expresa o impl├нcita, incluidas, entre otras, las garant├нas de comerciabilidad, idoneidad para un fin concreto, no infracci├│n, disponibilidad ininterrumpida, ausencia de errores o ausencia de vulnerabilidades de seguridad.\n\nLos desarrolladores no garantizan que el Software satisfaga tus necesidades ni que funcione sin interrupciones ni errores.",
    ),
    "disclaimerWarrantyTitle": MessageLookupByLibrary.simpleMessage(
      "Sin garant├нa",
    ),
    "disconnected": MessageLookupByLibrary.simpleMessage("Desconectado"),
    "discoverNewVersion": MessageLookupByLibrary.simpleMessage(
      "Nueva versi├│n disponible",
    ),
    "dnsHijackDesc": MessageLookupByLibrary.simpleMessage(
      "Sin esta entrada, TUN secuestra todas las consultas DNS al puerto 53 (any:53).",
    ),
    "dnsHijacking": MessageLookupByLibrary.simpleMessage("Secuestro de DNS"),
    "dnsMode": MessageLookupByLibrary.simpleMessage("Modo DNS"),
    "dnsOverrideDesc": MessageLookupByLibrary.simpleMessage(
      "Las entradas a├▒adidas aqu├н sustituyen el DNS de todos los perfiles de URL y de archivo; lo que no a├▒adas conserva el ajuste del propio perfil. Los perfiles personalizados definen su DNS en su contenido.",
    ),
    "dnsQueries": MessageLookupByLibrary.simpleMessage("Consultas DNS"),
    "docked": MessageLookupByLibrary.simpleMessage("Fija"),
    "domain": MessageLookupByLibrary.simpleMessage("Dominio"),
    "done": MessageLookupByLibrary.simpleMessage("Hecho"),
    "download": MessageLookupByLibrary.simpleMessage("Descarga"),
    "downloadBandwidth": MessageLookupByLibrary.simpleMessage(
      "Ancho de banda de descarga",
    ),
    "duration": MessageLookupByLibrary.simpleMessage("Duraci├│n"),
    "edit": MessageLookupByLibrary.simpleMessage("Editar"),
    "editDashboard": MessageLookupByLibrary.simpleMessage("Editar panel"),
    "editGlobalRules": MessageLookupByLibrary.simpleMessage(
      "Editar reglas globales",
    ),
    "editProxy": MessageLookupByLibrary.simpleMessage("Editar proxy"),
    "editProxyGroup": MessageLookupByLibrary.simpleMessage(
      "Editar grupo de proxies",
    ),
    "editRule": MessageLookupByLibrary.simpleMessage("Editar regla"),
    "editSsid": MessageLookupByLibrary.simpleMessage("Editar SSID"),
    "editorUnavailable": MessageLookupByLibrary.simpleMessage(
      "Editor no disponible",
    ),
    "elapsed": MessageLookupByLibrary.simpleMessage("Tard├│"),
    "emptyFallback": MessageLookupByLibrary.simpleMessage(
      "Respaldo si est├б vac├нo",
    ),
    "emptyTip": m23,
    "en": MessageLookupByLibrary.simpleMessage("Ingl├йs"),
    "enabled": MessageLookupByLibrary.simpleMessage("Activado"),
    "entries": MessageLookupByLibrary.simpleMessage(" entradas"),
    "error": MessageLookupByLibrary.simpleMessage("Error"),
    "errorDetails": MessageLookupByLibrary.simpleMessage("Detalles del error"),
    "es": MessageLookupByLibrary.simpleMessage("Espa├▒ol"),
    "exclude": MessageLookupByLibrary.simpleMessage(
      "Ocultar de aplicaciones recientes",
    ),
    "excludeDstPort": MessageLookupByLibrary.simpleMessage(
      "Puertos de destino excluidos",
    ),
    "excludeDstPortDesc": MessageLookupByLibrary.simpleMessage(
      "El tr├бfico hacia los puertos de destino excluidos no pasa por TUN.",
    ),
    "excludeFilter": MessageLookupByLibrary.simpleMessage(
      "Filtro de exclusi├│n",
    ),
    "excludeInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaces excluidas",
    ),
    "excludeInterfaceDesc": MessageLookupByLibrary.simpleMessage(
      "El tr├бfico que llega por las interfaces excluidas, como docker0, no pasa por TUN.",
    ),
    "excludeSrcPort": MessageLookupByLibrary.simpleMessage(
      "Puertos de origen excluidos",
    ),
    "excludeSrcPortDesc": MessageLookupByLibrary.simpleMessage(
      "El tr├бfico desde los puertos de origen excluidos no pasa por TUN.",
    ),
    "excludeSsids": MessageLookupByLibrary.simpleMessage("Excluir SSID"),
    "excludeSsidsDesc": MessageLookupByLibrary.simpleMessage(
      "Al conectarte a una red Wi-Fi con un SSID excluido, el estado de ejecuci├│n de la app cambia autom├бticamente.",
    ),
    "excludeUid": MessageLookupByLibrary.simpleMessage(
      "ID de usuario excluidos",
    ),
    "excludeUidDesc": MessageLookupByLibrary.simpleMessage(
      "El tr├бfico de los procesos de los ID de usuario excluidos no pasa por TUN.",
    ),
    "existsTip": m24,
    "exit": MessageLookupByLibrary.simpleMessage("Salir"),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage(
      "Salir de pantalla completa",
    ),
    "exitNodes": MessageLookupByLibrary.simpleMessage("Nodos de salida"),
    "expectedStatus": MessageLookupByLibrary.simpleMessage("Estado esperado"),
    "expireTime": MessageLookupByLibrary.simpleMessage("Fecha de vencimiento"),
    "exportFile": MessageLookupByLibrary.simpleMessage("Exportar archivo"),
    "exportLogs": MessageLookupByLibrary.simpleMessage("Exportar registros"),
    "exportSuccess": MessageLookupByLibrary.simpleMessage(
      "Exportaci├│n completada",
    ),
    "extend": MessageLookupByLibrary.simpleMessage("Extensi├│n"),
    "extendMode": MessageLookupByLibrary.simpleMessage("Modo de extensi├│n"),
    "extendScript": MessageLookupByLibrary.simpleMessage(
      "Script de extensi├│n",
    ),
    "externalController": MessageLookupByLibrary.simpleMessage(
      "Controlador externo",
    ),
    "externalControllerDesc": MessageLookupByLibrary.simpleMessage(
      "El controlador externo permite controlar el n├║cleo en el puerto 9090.",
    ),
    "externalControllerSecret": MessageLookupByLibrary.simpleMessage(
      "Clave del controlador externo",
    ),
    "externalLink": MessageLookupByLibrary.simpleMessage("Enlace externo"),
    "extraLarge": MessageLookupByLibrary.simpleMessage("Muy grande"),
    "fade": MessageLookupByLibrary.simpleMessage("Fundido"),
    "failedCount": m25,
    "failedItem": m26,
    "fakeipFilter": MessageLookupByLibrary.simpleMessage("Filtro Fake-IP"),
    "fakeipFilterMode": MessageLookupByLibrary.simpleMessage(
      "Modo de filtro Fake-IP",
    ),
    "fakeipFilterModeDesc": MessageLookupByLibrary.simpleMessage(
      "En el modo de filtro Fake-IP, la lista negra excluye las coincidencias, la lista blanca aplica Fake-IP solo a las coincidencias y rule coincide seg├║n las reglas.",
    ),
    "fakeipRange": MessageLookupByLibrary.simpleMessage("Rango Fake-IP"),
    "fakeipRange6": MessageLookupByLibrary.simpleMessage(
      "Rango Fake-IP (IPv6)",
    ),
    "fakeipTtl": MessageLookupByLibrary.simpleMessage("TTL de Fake-IP"),
    "fallbackFilter": MessageLookupByLibrary.simpleMessage(
      "Filtro de respaldo",
    ),
    "file": MessageLookupByLibrary.simpleMessage("Archivo"),
    "fileDesc": MessageLookupByLibrary.simpleMessage(
      "Sube un archivo de perfil directamente",
    ),
    "fileIsUpdate": MessageLookupByLibrary.simpleMessage(
      "El archivo se ha modificado. ┬┐Guardar los cambios?",
    ),
    "filter": MessageLookupByLibrary.simpleMessage("Filtro"),
    "filters": MessageLookupByLibrary.simpleMessage("Filtros"),
    "findProcessMode": MessageLookupByLibrary.simpleMessage("Buscar proceso"),
    "floating": MessageLookupByLibrary.simpleMessage("Flotante"),
    "followProfile": MessageLookupByLibrary.simpleMessage("Seguir perfil"),
    "followSystem": MessageLookupByLibrary.simpleMessage("Seguir el sistema"),
    "fontFamily": MessageLookupByLibrary.simpleMessage("Familia de fuente"),
    "fontSize": MessageLookupByLibrary.simpleMessage("Tama├▒o"),
    "forceDnsMapping": MessageLookupByLibrary.simpleMessage("Forzar mapeo DNS"),
    "forceDnsMappingDesc": MessageLookupByLibrary.simpleMessage(
      "Forzar mapeo DNS tambi├йn analiza las conexiones cuyo dominio provino de un mapeo DNS.",
    ),
    "forceDomain": MessageLookupByLibrary.simpleMessage("Forzar dominios"),
    "forceDomainDesc": MessageLookupByLibrary.simpleMessage(
      "Los dominios forzados tambi├йn se analizan; las dem├бs conexiones que ya tienen dominio se dejan como est├бn.",
    ),
    "forceRestartCoreTip": MessageLookupByLibrary.simpleMessage(
      "┬┐Seguro que quieres forzar el reinicio del n├║cleo?",
    ),
    "fr": MessageLookupByLibrary.simpleMessage("Franc├йs"),
    "general": MessageLookupByLibrary.simpleMessage("General"),
    "geoResources": MessageLookupByLibrary.simpleMessage("Geo"),
    "geoSkipped": m27,
    "geoUpdated": m28,
    "geodataLoader": MessageLookupByLibrary.simpleMessage(
      "Modo geo de poca memoria",
    ),
    "global": MessageLookupByLibrary.simpleMessage("Global"),
    "go": MessageLookupByLibrary.simpleMessage("Ir"),
    "goDownload": MessageLookupByLibrary.simpleMessage("Descargar"),
    "goToConfigureAddedRules": MessageLookupByLibrary.simpleMessage(
      "Ir a la configuraci├│n de las reglas a├▒adidas",
    ),
    "goToConfigureScript": MessageLookupByLibrary.simpleMessage(
      "Ir a la configuraci├│n del script",
    ),
    "grid": MessageLookupByLibrary.simpleMessage("Cuadr├нcula"),
    "groupCount": m29,
    "groupCountUnit": MessageLookupByLibrary.simpleMessage("grupos"),
    "groupTimeoutCount": m30,
    "hasCacheChange": MessageLookupByLibrary.simpleMessage(
      "┬┐Guardar los cambios en la cach├й?",
    ),
    "hashByInUser": MessageLookupByLibrary.simpleMessage(
      "Hash por usuario de entrada",
    ),
    "healthCheck": MessageLookupByLibrary.simpleMessage(
      "Comprobaci├│n de estado",
    ),
    "helperCorruptTip": MessageLookupByLibrary.simpleMessage(
      "El servicio auxiliar (Helper) no est├б disponible; no se puede activar el modo TUN. Reinstala FlClash para restaurarlo.",
    ),
    "hex": MessageLookupByLibrary.simpleMessage("Hex"),
    "hideFromList": MessageLookupByLibrary.simpleMessage("Ocultar de la lista"),
    "hideIp": MessageLookupByLibrary.simpleMessage("Ocultar IP"),
    "hidePassword": MessageLookupByLibrary.simpleMessage("Ocultar contrase├▒a"),
    "hideTimeoutProxies": MessageLookupByLibrary.simpleMessage(
      "Ocultar proxies sin respuesta",
    ),
    "hideTimeoutProxiesDesc": MessageLookupByLibrary.simpleMessage(
      "Omite los proxies cuya ├║ltima prueba de latencia super├│ el tiempo de espera",
    ),
    "hopInterval": MessageLookupByLibrary.simpleMessage("Intervalo de salto"),
    "host": MessageLookupByLibrary.simpleMessage("Host"),
    "hostname": MessageLookupByLibrary.simpleMessage("Nombre de host"),
    "hotkeyConflictWith": m31,
    "hotkeyDesc": MessageLookupByLibrary.simpleMessage(
      "Los atajos globales funcionan incluso con la ventana oculta. Toca una acci├│n para grabar su combinaci├│n de teclas.",
    ),
    "hotkeyManagement": MessageLookupByLibrary.simpleMessage(
      "Gesti├│n de atajos",
    ),
    "hotkeyNeedsModifier": m32,
    "hotkeyNotSet": MessageLookupByLibrary.simpleMessage("Sin asignar"),
    "hotkeyUnavailable": MessageLookupByLibrary.simpleMessage(
      "No registrado; puede que otra app lo est├й usando",
    ),
    "hours": MessageLookupByLibrary.simpleMessage("horas"),
    "hoursAgo": m33,
    "hoursAgoShort": m34,
    "hue": MessageLookupByLibrary.simpleMessage("Tono"),
    "icon": MessageLookupByLibrary.simpleMessage("Icono"),
    "iconRecords": MessageLookupByLibrary.simpleMessage("Registros de iconos"),
    "iconSets": MessageLookupByLibrary.simpleMessage("Conjuntos de iconos"),
    "iconSetsEmptyTip": MessageLookupByLibrary.simpleMessage(
      "A├║n no hay conjuntos de iconos. A├▒├бdelos en Recursos de perfil personalizado тЖТ Conjuntos de iconos",
    ),
    "iconStyle": MessageLookupByLibrary.simpleMessage("Estilo de icono"),
    "iconStyleFilled": MessageLookupByLibrary.simpleMessage("Relleno"),
    "iconStyleHidden": MessageLookupByLibrary.simpleMessage("Oculto"),
    "iconStylePlain": MessageLookupByLibrary.simpleMessage("Simple"),
    "iconUrl": MessageLookupByLibrary.simpleMessage("URL del icono"),
    "ignoreBatteryOptimization": MessageLookupByLibrary.simpleMessage(
      "Ignorar optimizaci├│n de bater├нa",
    ),
    "import": MessageLookupByLibrary.simpleMessage("Importar"),
    "importConfigInvalid": MessageLookupByLibrary.simpleMessage(
      "Este archivo no es una configuraci├│n importable",
    ),
    "importConfigReplaceTip": MessageLookupByLibrary.simpleMessage(
      "Al importar se reemplazan los grupos de proxies, las reglas y los ajustes que tiene ahora este perfil",
    ),
    "importFile": MessageLookupByLibrary.simpleMessage(
      "Importar desde archivo",
    ),
    "importFromLink": MessageLookupByLibrary.simpleMessage(
      "Importar desde enlace",
    ),
    "importUrl": MessageLookupByLibrary.simpleMessage("Importar desde URL"),
    "inbound": MessageLookupByLibrary.simpleMessage("Entrada"),
    "includeInterface": MessageLookupByLibrary.simpleMessage(
      "Interfaces incluidas",
    ),
    "includeInterfaceDesc": MessageLookupByLibrary.simpleMessage(
      "Solo el tr├бfico que llega por las interfaces incluidas pasa por TUN, y las interfaces excluidas dejan de aplicarse.",
    ),
    "includeUid": MessageLookupByLibrary.simpleMessage(
      "ID de usuario incluidos",
    ),
    "includeUidDesc": MessageLookupByLibrary.simpleMessage(
      "Solo el tr├бfico de los procesos de los ID de usuario incluidos pasa por TUN.",
    ),
    "infiniteTime": MessageLookupByLibrary.simpleMessage("No caduca"),
    "init": MessageLookupByLibrary.simpleMessage("Inicio"),
    "initFailed": MessageLookupByLibrary.simpleMessage("Error al iniciar"),
    "initFailedTip": MessageLookupByLibrary.simpleMessage(
      "FlClash encontr├│ un error al iniciarse y no puede continuar. Copia los detalles para informar del problema. Si sigue ocurriendo, borrar los datos suele permitir que la app vuelva a iniciarse.",
    ),
    "initiator": MessageLookupByLibrary.simpleMessage("Origen de la solicitud"),
    "initiatorShort": MessageLookupByLibrary.simpleMessage("De"),
    "inputProxyGroupName": MessageLookupByLibrary.simpleMessage(
      "Introduce el nombre del grupo de proxies",
    ),
    "inputRuleContent": MessageLookupByLibrary.simpleMessage(
      "Introduce el contenido de la regla",
    ),
    "installedAppsPermissionDeniedMessage": MessageLookupByLibrary.simpleMessage(
      "Se deneg├│ el permiso de lista de apps, por lo que no se pueden mostrar las apps instaladas. Conc├йdelo manualmente en los ajustes del sistema.",
    ),
    "installedAppsPermissionDesc": MessageLookupByLibrary.simpleMessage(
      "Este sistema oculta la lista de apps instaladas hasta que se concede el permiso. Autor├нzalo para configurar el proxy por app.",
    ),
    "installedAppsPermissionRequired": MessageLookupByLibrary.simpleMessage(
      "Se requiere permiso de lista de apps",
    ),
    "installedFonts": MessageLookupByLibrary.simpleMessage(
      "Fuentes instaladas",
    ),
    "intelligentSelected": MessageLookupByLibrary.simpleMessage(
      "Selecci├│n inteligente",
    ),
    "interfaceName": MessageLookupByLibrary.simpleMessage("Nombre de interfaz"),
    "interfaceNameDesc": MessageLookupByLibrary.simpleMessage(
      "El nombre de interfaz es la interfaz de red que usan las conexiones salientes.",
    ),
    "interfaceNameMode": MessageLookupByLibrary.simpleMessage(
      "Interfaz de salida",
    ),
    "interfaceNameModeClear": MessageLookupByLibrary.simpleMessage("Ninguna"),
    "interfaceNameModeCustom": MessageLookupByLibrary.simpleMessage(
      "Personalizada",
    ),
    "interfaceNameModeFollow": MessageLookupByLibrary.simpleMessage(
      "Seguir configuraci├│n",
    ),
    "internet": MessageLookupByLibrary.simpleMessage("Internet"),
    "interval": MessageLookupByLibrary.simpleMessage("Intervalo"),
    "intranetIP": MessageLookupByLibrary.simpleMessage("IP de intranet"),
    "invalidBackupFile": MessageLookupByLibrary.simpleMessage(
      "Archivo de copia de seguridad no v├бlido",
    ),
    "invalidCidrContent": MessageLookupByLibrary.simpleMessage(
      "Introduce un rango de IP en formato CIDR, como 192.168.0.0/16",
    ),
    "invalidDscpContent": MessageLookupByLibrary.simpleMessage(
      "Una marca DSCP no puede superar 63",
    ),
    "invalidHostContent": MessageLookupByLibrary.simpleMessage(
      "Introduce un dominio o una direcci├│n IP",
    ),
    "invalidIconSet": MessageLookupByLibrary.simpleMessage(
      "No es un conjunto de iconos v├бlido",
    ),
    "invalidLinkTip": MessageLookupByLibrary.simpleMessage(
      "No es un enlace de suscripci├│n ni un enlace para compartir proxies",
    ),
    "invalidListenContent": MessageLookupByLibrary.simpleMessage(
      "Introduce una direcci├│n y un puerto, como 0.0.0.0:1053",
    ),
    "invalidNetworkContent": MessageLookupByLibrary.simpleMessage(
      "Solo se admite tcp o udp",
    ),
    "invalidPolicy": m35,
    "invalidPortRangeContent": MessageLookupByLibrary.simpleMessage(
      "Introduce un puerto o un rango como 443 u 8000-9000",
    ),
    "invalidProfileQrcode": MessageLookupByLibrary.simpleMessage(
      "Este c├│digo QR no contiene un enlace de perfil",
    ),
    "invalidProxy": m36,
    "invalidProxyProvider": m37,
    "invalidRangeContent": MessageLookupByLibrary.simpleMessage(
      "Introduce n├║meros o rangos como 80 u 8000-9000, separados por /",
    ),
    "invalidRuleSet": m38,
    "invalidSubRule": m39,
    "ipAddress": MessageLookupByLibrary.simpleMessage("Direcci├│n IP"),
    "ipAsn": MessageLookupByLibrary.simpleMessage("ASN"),
    "ipFlagAbuser": MessageLookupByLibrary.simpleMessage("Historial de abusos"),
    "ipFlagProxy": MessageLookupByLibrary.simpleMessage("Proxy"),
    "ipFlagTor": MessageLookupByLibrary.simpleMessage("Tor"),
    "ipFlagVpn": MessageLookupByLibrary.simpleMessage("VPN"),
    "ipFlags": MessageLookupByLibrary.simpleMessage("Indicadores"),
    "ipOrganization": MessageLookupByLibrary.simpleMessage("Organizaci├│n"),
    "ipQualityFailed": MessageLookupByLibrary.simpleMessage(
      "No se pudo determinar el tipo de IP",
    ),
    "ipQualityGood": MessageLookupByLibrary.simpleMessage("Buena"),
    "ipQualityLevel": MessageLookupByLibrary.simpleMessage("Nivel"),
    "ipQualityNormal": MessageLookupByLibrary.simpleMessage("Normal"),
    "ipQualityRetry": MessageLookupByLibrary.simpleMessage(
      "Comprobar de nuevo",
    ),
    "ipQualityRisky": MessageLookupByLibrary.simpleMessage("Arriesgada"),
    "ipQualityShort": MessageLookupByLibrary.simpleMessage("Calidad"),
    "ipQualitySource": MessageLookupByLibrary.simpleMessage("Respondido por"),
    "ipQualitySources": MessageLookupByLibrary.simpleMessage("Fuentes"),
    "ipSourceIpMismatch": MessageLookupByLibrary.simpleMessage(
      "IP de salida distinta",
    ),
    "ipSourceNoType": MessageLookupByLibrary.simpleMessage("Sin tipo"),
    "ipSourceRateLimited": MessageLookupByLibrary.simpleMessage(
      "L├нmite de solicitudes",
    ),
    "ipType": MessageLookupByLibrary.simpleMessage("Tipo"),
    "ipTypeBusiness": MessageLookupByLibrary.simpleMessage("Empresarial"),
    "ipTypeHosting": MessageLookupByLibrary.simpleMessage("Centro de datos"),
    "ipTypeMobile": MessageLookupByLibrary.simpleMessage("Red m├│vil"),
    "ipTypeResidential": MessageLookupByLibrary.simpleMessage("Residencial"),
    "ipTypeUnknown": MessageLookupByLibrary.simpleMessage("Tipo desconocido"),
    "ipVersion": MessageLookupByLibrary.simpleMessage("Versi├│n de IP"),
    "ipv6Desc": MessageLookupByLibrary.simpleMessage(
      "El tr├бfico IPv6 solo se recibe mientras IPv6 est├й activado.",
    ),
    "ipv6InboundDesc": MessageLookupByLibrary.simpleMessage(
      "Con IPv6 activado, la VPN permite el tr├бfico IPv6 entrante.",
    ),
    "ipv6Timeout": MessageLookupByLibrary.simpleMessage(
      "Tiempo de espera IPv6 (ms)",
    ),
    "itemsCount": m40,
    "ja": MessageLookupByLibrary.simpleMessage("Japon├йs"),
    "justNow": MessageLookupByLibrary.simpleMessage("Ahora mismo"),
    "keepAliveIdle": MessageLookupByLibrary.simpleMessage(
      "Inactividad de keep-alive TCP",
    ),
    "keepAliveIntervalDesc": MessageLookupByLibrary.simpleMessage(
      "Intervalo de keep-alive TCP",
    ),
    "key": MessageLookupByLibrary.simpleMessage("Clave"),
    "ko": MessageLookupByLibrary.simpleMessage("Coreano"),
    "label": MessageLookupByLibrary.simpleMessage("Etiqueta"),
    "language": MessageLookupByLibrary.simpleMessage("Idioma"),
    "large": MessageLookupByLibrary.simpleMessage("Grande"),
    "lastUpdated": MessageLookupByLibrary.simpleMessage(
      "├Ъltima actualizaci├│n",
    ),
    "launchInterrupted": MessageLookupByLibrary.simpleMessage(
      "El inicio no se complet├│",
    ),
    "launchInterruptedTip": MessageLookupByLibrary.simpleMessage(
      "La ├║ltima vez, la app se cerr├│ inesperadamente mientras se iniciaba. En este inicio se ha omitido la configuraci├│n autom├бtica; puedes iniciarla manualmente para reintentarlo.",
    ),
    "layout": MessageLookupByLibrary.simpleMessage("Dise├▒o"),
    "light": MessageLookupByLibrary.simpleMessage("Claro"),
    "lineIssueTip": m41,
    "lineWrap": MessageLookupByLibrary.simpleMessage("Ajuste de l├нnea"),
    "link": MessageLookupByLibrary.simpleMessage("Enlace"),
    "linkDesc": MessageLookupByLibrary.simpleMessage(
      "Obt├йn un perfil desde un enlace de suscripci├│n o un enlace para compartir proxies",
    ),
    "liquidGlass": MessageLookupByLibrary.simpleMessage("Liquid Glass"),
    "list": MessageLookupByLibrary.simpleMessage("Lista"),
    "listen": MessageLookupByLibrary.simpleMessage("Escucha"),
    "listenRoutingMark": MessageLookupByLibrary.simpleMessage(
      "Marca de enrutamiento de escucha",
    ),
    "listenRoutingMarkDesc": MessageLookupByLibrary.simpleMessage(
      "La marca de enrutamiento de escucha solo funciona en Linux.",
    ),
    "liveConnections": MessageLookupByLibrary.simpleMessage(
      "Conexiones activas",
    ),
    "loading": MessageLookupByLibrary.simpleMessage("CargandoтАж"),
    "local": MessageLookupByLibrary.simpleMessage("Local"),
    "localImage": MessageLookupByLibrary.simpleMessage("Imagen local"),
    "localNetworkDeniedTip": MessageLookupByLibrary.simpleMessage(
      "Permiso de red local denegado: con la pila gvisor, la LAN no es accesible.",
    ),
    "localProxies": MessageLookupByLibrary.simpleMessage("Proxies locales"),
    "locationPermission": MessageLookupByLibrary.simpleMessage(
      "Permiso de ubicaci├│n",
    ),
    "locationPermissionDeniedMessage": MessageLookupByLibrary.simpleMessage(
      "Se deneg├│ el permiso de ubicaci├│n, por lo que no se puede leer el nombre de la red Wi-Fi actual. Activa el permiso de ubicaci├│n manualmente en los ajustes del sistema.",
    ),
    "locationPermissionDesc": MessageLookupByLibrary.simpleMessage(
      "El sistema requiere el permiso de ubicaci├│n para leer el nombre de la red Wi-Fi. En Android elige тАЬPermitir todo el tiempoтАЭ; de lo contrario, no se podr├б leer el nombre de la red Wi-Fi mientras la app est├й en segundo plano.",
    ),
    "locationPermissionGuide": m42,
    "locationPermissionRequired": MessageLookupByLibrary.simpleMessage(
      "Se requiere permiso de ubicaci├│n",
    ),
    "log": MessageLookupByLibrary.simpleMessage("Registro"),
    "logLevel": MessageLookupByLibrary.simpleMessage("Nivel de registro"),
    "logcat": MessageLookupByLibrary.simpleMessage("Logcat"),
    "logcatDesc": MessageLookupByLibrary.simpleMessage(
      "Si desactivas Logcat, se oculta la entrada de registros.",
    ),
    "logs": MessageLookupByLibrary.simpleMessage("Registros"),
    "logsAndDiagnostics": MessageLookupByLibrary.simpleMessage(
      "Registros y diagn├│stico",
    ),
    "logsTest": MessageLookupByLibrary.simpleMessage("Prueba de registros"),
    "loopback": MessageLookupByLibrary.simpleMessage(
      "Exenci├│n de loopback de UWP",
    ),
    "loose": MessageLookupByLibrary.simpleMessage("Amplio"),
    "matchCase": MessageLookupByLibrary.simpleMessage(
      "Coincidir may├║sculas y min├║sculas",
    ),
    "matchSourceIp": MessageLookupByLibrary.simpleMessage(
      "Coincidir con IP de origen",
    ),
    "matchTarget": MessageLookupByLibrary.simpleMessage("MATCH-TARGET"),
    "maxFailedTimes": MessageLookupByLibrary.simpleMessage("M├бximo de fallos"),
    "maxLengthTip": m43,
    "maximize": MessageLookupByLibrary.simpleMessage("Maximizar"),
    "memoryAppResident": MessageLookupByLibrary.simpleMessage(
      "Memoria residente",
    ),
    "memoryAppShared": MessageLookupByLibrary.simpleMessage("App y compartida"),
    "memoryCoreHeapIdle": MessageLookupByLibrary.simpleMessage("Heap inactivo"),
    "memoryCoreHeapInuse": MessageLookupByLibrary.simpleMessage("Heap en uso"),
    "memoryCoreNotRunning": MessageLookupByLibrary.simpleMessage(
      "El n├║cleo no se est├б ejecutando",
    ),
    "memoryCoreRuntime": MessageLookupByLibrary.simpleMessage(
      "Sobrecarga del runtime",
    ),
    "memoryCoreStack": MessageLookupByLibrary.simpleMessage(
      "Pilas de goroutines",
    ),
    "memoryEstimateDesc": MessageLookupByLibrary.simpleMessage(
      "Estimado a partir de la memoria residente del proceso; puede diferir de lo que indica el sistema.",
    ),
    "memoryEstimateSharedDesc": MessageLookupByLibrary.simpleMessage(
      "El n├║cleo se ejecuta dentro del proceso de la app. Su parte se estima a partir de las estad├нsticas del runtime, y el resto cuenta como memoria de la app y compartida.",
    ),
    "memoryInfo": MessageLookupByLibrary.simpleMessage(
      "Informaci├│n de memoria",
    ),
    "memoryInfoDesc": MessageLookupByLibrary.simpleMessage(
      "Memoria que usan la app y el n├║cleo",
    ),
    "memoryReleased": MessageLookupByLibrary.simpleMessage("Memoria liberada"),
    "memoryReleasedSize": m44,
    "messageTest": MessageLookupByLibrary.simpleMessage("Prueba de mensaje"),
    "messageTestTip": MessageLookupByLibrary.simpleMessage(
      "Esto es un mensaje.",
    ),
    "minimize": MessageLookupByLibrary.simpleMessage("Minimizar"),
    "minimizeOnExit": MessageLookupByLibrary.simpleMessage(
      "Minimizar al salir",
    ),
    "minutes": MessageLookupByLibrary.simpleMessage("minutos"),
    "minutesAgo": m45,
    "minutesAgoShort": m46,
    "mixedPort": MessageLookupByLibrary.simpleMessage("Puerto mixto"),
    "mode": MessageLookupByLibrary.simpleMessage("Modo"),
    "monochromeScheme": MessageLookupByLibrary.simpleMessage("Monocromo"),
    "monthsAgo": m47,
    "monthsAgoShort": m48,
    "more": MessageLookupByLibrary.simpleMessage("M├бs"),
    "name": MessageLookupByLibrary.simpleMessage("Nombre"),
    "navigationBarStyle": MessageLookupByLibrary.simpleMessage(
      "Barra inferior",
    ),
    "network": MessageLookupByLibrary.simpleMessage("Red"),
    "networkAccessDeniedError": m49,
    "networkBadResponseError": m50,
    "networkCancelledError": MessageLookupByLibrary.simpleMessage(
      "Se cancel├│ la solicitud",
    ),
    "networkConnectionError": MessageLookupByLibrary.simpleMessage(
      "No se pudo conectar con el servidor. Comprueba tu conexi├│n de red o los ajustes del proxy",
    ),
    "networkHostLookupError": MessageLookupByLibrary.simpleMessage(
      "No se pudo resolver la direcci├│n del servidor. Comprueba que la URL sea correcta y que el DNS funcione",
    ),
    "networkName": MessageLookupByLibrary.simpleMessage("Nombre de la red"),
    "networkNotFoundError": m51,
    "networkRateLimitedError": MessageLookupByLibrary.simpleMessage(
      "Demasiadas solicitudes (HTTP 429). Espera un momento e int├йntalo de nuevo",
    ),
    "networkRequestFailed": m52,
    "networkSecret": MessageLookupByLibrary.simpleMessage("Clave de la red"),
    "networkServerError": m53,
    "networkSpeed": MessageLookupByLibrary.simpleMessage("Velocidad de red"),
    "networkTakeover": MessageLookupByLibrary.simpleMessage(
      "Control del tr├бfico",
    ),
    "networkTimeoutError": MessageLookupByLibrary.simpleMessage(
      "Se agot├│ el tiempo de espera de la solicitud. Comprueba tu red o el proxy e int├йntalo de nuevo",
    ),
    "networkTlsError": MessageLookupByLibrary.simpleMessage(
      "Fall├│ la conexi├│n segura. Puede que el certificado del servidor no sea v├бlido o que la conexi├│n est├й siendo interceptada",
    ),
    "networkType": MessageLookupByLibrary.simpleMessage("Tipo de red"),
    "nextMatch": MessageLookupByLibrary.simpleMessage("Coincidencia siguiente"),
    "no": MessageLookupByLibrary.simpleMessage("No"),
    "noData": MessageLookupByLibrary.simpleMessage("Sin datos"),
    "noInfo": MessageLookupByLibrary.simpleMessage("Sin informaci├│n"),
    "noLongerRemind": MessageLookupByLibrary.simpleMessage(
      "No volver a record├бrmelo",
    ),
    "noNetwork": MessageLookupByLibrary.simpleMessage("Sin red"),
    "noNetworkApp": MessageLookupByLibrary.simpleMessage("Apps sin red"),
    "noResolve": MessageLookupByLibrary.simpleMessage("No resolver IP"),
    "noResolveHostname": MessageLookupByLibrary.simpleMessage(
      "No resolver nombre de host",
    ),
    "noSearchResults": MessageLookupByLibrary.simpleMessage(
      "No hay resultados",
    ),
    "nodes": MessageLookupByLibrary.simpleMessage("Nodos"),
    "nonTextProviderFile": MessageLookupByLibrary.simpleMessage(
      "Este recurso externo no es un archivo de texto",
    ),
    "none": MessageLookupByLibrary.simpleMessage("Ninguno"),
    "notRunning": MessageLookupByLibrary.simpleMessage("Detenido"),
    "notSelectedTip": MessageLookupByLibrary.simpleMessage(
      "No se puede seleccionar el grupo de proxies actual",
    ),
    "ntpInterval": MessageLookupByLibrary.simpleMessage(
      "Intervalo de sincronizaci├│n (minutos)",
    ),
    "ntpStatusDesc": MessageLookupByLibrary.simpleMessage(
      "NTP obtiene la hora de un servidor NTP en lugar del reloj del sistema.",
    ),
    "nullProfileDesc": MessageLookupByLibrary.simpleMessage(
      "A├▒ade un perfil para empezar",
    ),
    "nullTip": m54,
    "numberRangeTip": m55,
    "numberTip": m56,
    "obfs": MessageLookupByLibrary.simpleMessage("Ofuscaci├│n"),
    "obfsHost": MessageLookupByLibrary.simpleMessage("Host de ofuscaci├│n"),
    "obfsMode": MessageLookupByLibrary.simpleMessage("Modo de ofuscaci├│n"),
    "obfsParam": MessageLookupByLibrary.simpleMessage(
      "Par├бmetro de ofuscaci├│n",
    ),
    "obfsPassword": MessageLookupByLibrary.simpleMessage(
      "Contrase├▒a de ofuscaci├│n",
    ),
    "onDemand": MessageLookupByLibrary.simpleMessage("Bajo demanda"),
    "onDemandDesc": MessageLookupByLibrary.simpleMessage(
      "Bajo demanda pausa el proxy en las redes Wi-Fi excluidas.",
    ),
    "onlyStatisticsProxy": MessageLookupByLibrary.simpleMessage(
      "Contar solo el tr├бfico del proxy",
    ),
    "optional": MessageLookupByLibrary.simpleMessage("Opcional"),
    "options": MessageLookupByLibrary.simpleMessage("Opciones"),
    "other": MessageLookupByLibrary.simpleMessage("Otros"),
    "otherContributors": MessageLookupByLibrary.simpleMessage(
      "Otros colaboradores",
    ),
    "outbound": MessageLookupByLibrary.simpleMessage("Salida"),
    "outboundExit": MessageLookupByLibrary.simpleMessage("Salida"),
    "outboundIp": MessageLookupByLibrary.simpleMessage("IP de salida"),
    "outboundMode": MessageLookupByLibrary.simpleMessage("Modo de salida"),
    "overrideDestination": MessageLookupByLibrary.simpleMessage(
      "Sobrescribir destino",
    ),
    "overrideDestinationDesc": MessageLookupByLibrary.simpleMessage(
      "Sobrescribir destino se conecta al dominio detectado en lugar de a la direcci├│n original.",
    ),
    "overrideEntries": MessageLookupByLibrary.simpleMessage(
      "Entradas de sobrescritura",
    ),
    "parsePureIp": MessageLookupByLibrary.simpleMessage("Analizar IP pura"),
    "parsePureIpDesc": MessageLookupByLibrary.simpleMessage(
      "Analizar IP pura analiza las conexiones que solo llevan una direcci├│n IP.",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Contrase├▒a"),
    "paste": MessageLookupByLibrary.simpleMessage("Pegar"),
    "peers": MessageLookupByLibrary.simpleMessage("Pares"),
    "pickFromAlbum": MessageLookupByLibrary.simpleMessage("Elegir del ├бlbum"),
    "pinWindow": MessageLookupByLibrary.simpleMessage("Fijar ventana"),
    "pleaseBindWebDAV": MessageLookupByLibrary.simpleMessage("Vincula WebDAV"),
    "pleaseEnterScriptName": MessageLookupByLibrary.simpleMessage(
      "Introduce un nombre para el script",
    ),
    "pleaseUploadValidQrcode": MessageLookupByLibrary.simpleMessage(
      "Sube un c├│digo QR v├бlido",
    ),
    "plugin": MessageLookupByLibrary.simpleMessage("Complemento"),
    "pluginHost": MessageLookupByLibrary.simpleMessage("Host del complemento"),
    "pluginMode": MessageLookupByLibrary.simpleMessage("Modo del complemento"),
    "port": MessageLookupByLibrary.simpleMessage("Puerto"),
    "portConflictTip": MessageLookupByLibrary.simpleMessage(
      "Introduce un puerto diferente",
    ),
    "portHopping": MessageLookupByLibrary.simpleMessage("Salto de puertos"),
    "portTip": m57,
    "portValue": m58,
    "ports": MessageLookupByLibrary.simpleMessage("Puertos"),
    "preSharedKey": MessageLookupByLibrary.simpleMessage("Clave precompartida"),
    "prerequisites": MessageLookupByLibrary.simpleMessage("Requisitos previos"),
    "pressKeyboard": MessageLookupByLibrary.simpleMessage(
      "Pulsa una combinaci├│n de teclas",
    ),
    "preview": MessageLookupByLibrary.simpleMessage("Vista previa"),
    "previousMatch": MessageLookupByLibrary.simpleMessage(
      "Coincidencia anterior",
    ),
    "privateKey": MessageLookupByLibrary.simpleMessage("Clave privada"),
    "privateKeyPassphrase": MessageLookupByLibrary.simpleMessage(
      "Frase de contrase├▒a de la clave privada",
    ),
    "process": MessageLookupByLibrary.simpleMessage("Proceso"),
    "profile": MessageLookupByLibrary.simpleMessage("Perfil"),
    "profileAutoUpdateIntervalInvalidValidationDesc":
        MessageLookupByLibrary.simpleMessage("Introduce un intervalo v├бlido"),
    "profileAutoUpdateIntervalNullValidationDesc":
        MessageLookupByLibrary.simpleMessage(
          "Introduce el intervalo de actualizaci├│n autom├бtica",
        ),
    "profileDaysLeft": m59,
    "profileExpiresIn": m60,
    "profileHasUpdate": MessageLookupByLibrary.simpleMessage(
      "El perfil se ha modificado. ┬┐Desactivar la actualizaci├│n autom├бtica?",
    ),
    "profileNameNullValidationDesc": MessageLookupByLibrary.simpleMessage(
      "Introduce el nombre del perfil",
    ),
    "profileSettingsDesc": MessageLookupByLibrary.simpleMessage(
      "Se aplica solo a este perfil; lo que no a├▒adas usa su valor predeterminado.",
    ),
    "profileTunSettingsDesc": MessageLookupByLibrary.simpleMessage(
      "Se aplica solo a este perfil y tiene prioridad sobre las entradas de sobrescritura de TUN de los ajustes de red.",
    ),
    "profileUpdatedAt": m61,
    "profileUrlInvalidValidationDesc": MessageLookupByLibrary.simpleMessage(
      "Introduce una URL de perfil v├бlida",
    ),
    "profileUrlNullValidationDesc": MessageLookupByLibrary.simpleMessage(
      "Introduce la URL del perfil",
    ),
    "profiles": MessageLookupByLibrary.simpleMessage("Perfiles"),
    "profilesSort": MessageLookupByLibrary.simpleMessage("Ordenar perfiles"),
    "project": MessageLookupByLibrary.simpleMessage("Proyecto"),
    "protocol": MessageLookupByLibrary.simpleMessage("Protocolo"),
    "protocolParam": MessageLookupByLibrary.simpleMessage(
      "Par├бmetro del protocolo",
    ),
    "protocolVersion": MessageLookupByLibrary.simpleMessage(
      "Versi├│n del protocolo",
    ),
    "providerInUse": m62,
    "providerUrlTip": MessageLookupByLibrary.simpleMessage(
      "Solo se admiten proveedores remotos",
    ),
    "providers": MessageLookupByLibrary.simpleMessage("Recursos externos"),
    "proxies": MessageLookupByLibrary.simpleMessage("Proxies"),
    "proxiesCount": m63,
    "proxiesProfileLabel": m64,
    "proxiesRemovedTip": m65,
    "proxiesReplacedTip": m66,
    "proxyChains": MessageLookupByLibrary.simpleMessage("Cadena de proxies"),
    "proxyGroup": MessageLookupByLibrary.simpleMessage("Grupo de proxies"),
    "proxyGroupEmpty": MessageLookupByLibrary.simpleMessage(
      "El grupo de proxies est├б vac├нo",
    ),
    "proxyGroupInUse": m67,
    "proxyGroupsAfterStart": MessageLookupByLibrary.simpleMessage(
      "Los grupos aparecen aqu├н cuando se inicia el n├║cleo",
    ),
    "proxyGroupsCount": m68,
    "proxyProviders": MessageLookupByLibrary.simpleMessage(
      "Proveedores de proxies",
    ),
    "proxyType": MessageLookupByLibrary.simpleMessage("Tipo de proxy"),
    "pruneCache": MessageLookupByLibrary.simpleMessage("Depurar cach├й"),
    "publicKey": MessageLookupByLibrary.simpleMessage("Clave p├║blica"),
    "pureBlack": MessageLookupByLibrary.simpleMessage("Negro puro"),
    "pureBlackMode": MessageLookupByLibrary.simpleMessage("Modo negro puro"),
    "qrcode": MessageLookupByLibrary.simpleMessage("C├│digo QR"),
    "qrcodeDesc": MessageLookupByLibrary.simpleMessage(
      "Escanea un c├│digo QR para obtener un perfil",
    ),
    "quickActions": MessageLookupByLibrary.simpleMessage("Acciones r├бpidas"),
    "quickEdit": MessageLookupByLibrary.simpleMessage("Edici├│n r├бpida"),
    "recentRequests": MessageLookupByLibrary.simpleMessage(
      "Solicitudes recientes",
    ),
    "recommendedIcons": MessageLookupByLibrary.simpleMessage("Sugeridos"),
    "recordType": MessageLookupByLibrary.simpleMessage("Tipo de registro"),
    "redirPort": MessageLookupByLibrary.simpleMessage("Puerto Redir"),
    "redo": MessageLookupByLibrary.simpleMessage("Rehacer"),
    "regex": MessageLookupByLibrary.simpleMessage("Expresi├│n regular"),
    "releaseMemory": MessageLookupByLibrary.simpleMessage("Liberar memoria"),
    "releaseMemoryFailed": MessageLookupByLibrary.simpleMessage(
      "No se pudo liberar la memoria",
    ),
    "remote": MessageLookupByLibrary.simpleMessage("Remoto"),
    "remoteDestination": MessageLookupByLibrary.simpleMessage("Destino remoto"),
    "remoteDnsResolve": MessageLookupByLibrary.simpleMessage(
      "Resoluci├│n DNS remota",
    ),
    "remove": MessageLookupByLibrary.simpleMessage("Quitar"),
    "rename": MessageLookupByLibrary.simpleMessage("Renombrar"),
    "replace": MessageLookupByLibrary.simpleMessage("Reemplazar"),
    "replaceAll": MessageLookupByLibrary.simpleMessage("Reemplazar todo"),
    "request": MessageLookupByLibrary.simpleMessage("Solicitud"),
    "requests": MessageLookupByLibrary.simpleMessage("Solicitudes"),
    "requestsAndUpdates": MessageLookupByLibrary.simpleMessage(
      "Solicitudes y actualizaciones",
    ),
    "required": MessageLookupByLibrary.simpleMessage("Obligatorio"),
    "reset": MessageLookupByLibrary.simpleMessage("Restablecer"),
    "resetPageChangesTip": MessageLookupByLibrary.simpleMessage(
      "Esta p├бgina tiene cambios. ┬┐Seguro que quieres restablecer?",
    ),
    "resetTip": MessageLookupByLibrary.simpleMessage(
      "┬┐Seguro que quieres restablecer?",
    ),
    "resourceUpdateInterval": MessageLookupByLibrary.simpleMessage(
      "Intervalo de actualizaci├│n autom├бtica",
    ),
    "resourceUpdateIntervalTip": MessageLookupByLibrary.simpleMessage(
      "El intervalo de actualizaci├│n autom├бtica debe ser mayor que 0",
    ),
    "resources": MessageLookupByLibrary.simpleMessage("Recursos"),
    "respectRules": MessageLookupByLibrary.simpleMessage("Respetar reglas"),
    "respectRulesDesc": MessageLookupByLibrary.simpleMessage(
      "Respetar reglas enruta las conexiones DNS seg├║n las reglas y requiere un Proxy Server Nameserver.",
    ),
    "responseCode": MessageLookupByLibrary.simpleMessage(
      "C├│digo de respuesta",
    ),
    "restart": MessageLookupByLibrary.simpleMessage("Reiniciar"),
    "restartCoreTip": MessageLookupByLibrary.simpleMessage(
      "┬┐Seguro que quieres reiniciar el n├║cleo?",
    ),
    "restore": MessageLookupByLibrary.simpleMessage("Restaurar"),
    "restoreAllData": MessageLookupByLibrary.simpleMessage(
      "Restaurar todos los datos",
    ),
    "restoreOnlyConfig": MessageLookupByLibrary.simpleMessage(
      "Restaurar solo los perfiles",
    ),
    "restoreStrategy": MessageLookupByLibrary.simpleMessage(
      "Estrategia de restauraci├│n",
    ),
    "restoreStrategyCompatible": MessageLookupByLibrary.simpleMessage(
      "Compatible",
    ),
    "restoreStrategyOverride": MessageLookupByLibrary.simpleMessage(
      "Sobrescribir",
    ),
    "restoreSuccess": MessageLookupByLibrary.simpleMessage(
      "Restauraci├│n completada",
    ),
    "result": MessageLookupByLibrary.simpleMessage("Resultado"),
    "retry": MessageLookupByLibrary.simpleMessage("Reintentar"),
    "routeAddress": MessageLookupByLibrary.simpleMessage("Direcciones de ruta"),
    "routeExcludeAddress": MessageLookupByLibrary.simpleMessage(
      "Direcciones excluidas de la ruta",
    ),
    "routingMark": MessageLookupByLibrary.simpleMessage(
      "Marca de enrutamiento",
    ),
    "ru": MessageLookupByLibrary.simpleMessage("Ruso"),
    "rule": MessageLookupByLibrary.simpleMessage("Regla"),
    "ruleActionAndDesc": MessageLookupByLibrary.simpleMessage(
      "Regla l├│gica AND",
    ),
    "ruleActionDomainDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con el dominio completo",
    ),
    "ruleActionDomainKeywordDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con una palabra clave del dominio",
    ),
    "ruleActionDomainRegexDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con una expresi├│n regular de dominio",
    ),
    "ruleActionDomainSuffixDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con un sufijo de dominio",
    ),
    "ruleActionDomainWildcardDesc": MessageLookupByLibrary.simpleMessage(
      "Coincidencia con comodines; solo se admiten * y ?",
    ),
    "ruleActionDscpDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con la marca DSCP (solo entrada UDP de tproxy)",
    ),
    "ruleActionDstPortDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con el rango de puertos de destino",
    ),
    "ruleActionGeoipDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con el c├│digo de pa├нs de la IP",
    ),
    "ruleActionGeositeDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con los dominios de Geosite",
    ),
    "ruleActionInNameDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con el nombre de la entrada",
    ),
    "ruleActionInPortDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con el puerto de entrada",
    ),
    "ruleActionInTypeDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con el tipo de entrada",
    ),
    "ruleActionInUserDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con el nombre de usuario de entrada; separa varios usuarios con /",
    ),
    "ruleActionIpAsnDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con el ASN de la IP",
    ),
    "ruleActionIpCidr6Desc": MessageLookupByLibrary.simpleMessage(
      "Coincide con un rango de direcciones IP; IP-CIDR6 es solo un alias",
    ),
    "ruleActionIpCidrDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con un rango de direcciones IP",
    ),
    "ruleActionIpSuffixDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con un rango de sufijo de IP",
    ),
    "ruleActionMatchDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con todas las solicitudes, sin necesidad de condiciones",
    ),
    "ruleActionNetworkDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con TCP o UDP",
    ),
    "ruleActionNotDesc": MessageLookupByLibrary.simpleMessage(
      "Regla l├│gica NOT",
    ),
    "ruleActionOrDesc": MessageLookupByLibrary.simpleMessage(
      "Regla l├│gica OR",
    ),
    "ruleActionProcessNameDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con el nombre del proceso; en Android coincide con el nombre del paquete",
    ),
    "ruleActionProcessNameRegexDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con una expresi├│n regular del nombre del proceso; en Android coincide con el nombre del paquete",
    ),
    "ruleActionProcessNameWildcardDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con comodines en el nombre del proceso; solo se admiten * y ?",
    ),
    "ruleActionProcessPathDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con la ruta completa del proceso",
    ),
    "ruleActionProcessPathRegexDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con una expresi├│n regular de la ruta del proceso",
    ),
    "ruleActionProcessPathWildcardDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con comodines en la ruta del proceso; solo se admiten * y ?",
    ),
    "ruleActionRematchNameDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con el nombre de rematch; separa varios nombres con /",
    ),
    "ruleActionRuleSetDesc": MessageLookupByLibrary.simpleMessage(
      "Hace referencia a un conjunto de reglas; requiere rule-providers",
    ),
    "ruleActionSrcGeoipDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con el c├│digo de pa├нs de la IP de origen",
    ),
    "ruleActionSrcIpAsnDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con el ASN de la IP de origen",
    ),
    "ruleActionSrcIpCidrDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con un rango de direcciones IP de origen",
    ),
    "ruleActionSrcIpSuffixDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con un rango de sufijo de IP de origen",
    ),
    "ruleActionSrcPortDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con el rango de puertos de origen",
    ),
    "ruleActionSubRuleDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con una subregla; cuidado con los par├йntesis",
    ),
    "ruleActionUidDesc": MessageLookupByLibrary.simpleMessage(
      "Coincide con el ID de usuario de Linux",
    ),
    "ruleEmpty": MessageLookupByLibrary.simpleMessage("La regla est├б vac├нa"),
    "ruleListInvalid": MessageLookupByLibrary.simpleMessage(
      "Las reglas deben ser una lista YAML con una regla por elemento, por ejemplo - DOMAIN,example.com,DIRECT",
    ),
    "rulePresetBittorrentDirect": MessageLookupByLibrary.simpleMessage(
      "BitTorrent directo",
    ),
    "rulePresetBlockDot": MessageLookupByLibrary.simpleMessage(
      "Bloquear DNS sobre TLS",
    ),
    "rulePresetBlockLoopback": MessageLookupByLibrary.simpleMessage(
      "Bloquear bucle del proxy",
    ),
    "rulePresetBlockQuic": MessageLookupByLibrary.simpleMessage(
      "Bloquear QUIC",
    ),
    "rulePresetBlockStun": MessageLookupByLibrary.simpleMessage(
      "Bloquear STUN",
    ),
    "rulePresetLanDirect": MessageLookupByLibrary.simpleMessage("LAN directa"),
    "rulePresetSystemServicesDirect": MessageLookupByLibrary.simpleMessage(
      "Apple y Microsoft directos",
    ),
    "ruleProviders": MessageLookupByLibrary.simpleMessage(
      "Proveedores de reglas",
    ),
    "ruleSet": MessageLookupByLibrary.simpleMessage("Conjunto de reglas"),
    "ruleSetEmptyTip": MessageLookupByLibrary.simpleMessage(
      "El conjunto de reglas no tiene entradas utilizables",
    ),
    "ruleSetInvalidTip": MessageLookupByLibrary.simpleMessage(
      "No se puede leer este archivo mrs",
    ),
    "ruleSetMixedTip": MessageLookupByLibrary.simpleMessage(
      "El conjunto de reglas mezcla dominios y rangos de IP, por lo que no se puede determinar su tipo",
    ),
    "ruleTarget": MessageLookupByLibrary.simpleMessage("Destino de la regla"),
    "ruleTextInvalid": MessageLookupByLibrary.simpleMessage(
      "La regla debe empezar con un tipo admitido, por ejemplo DOMAIN,example.com,DIRECT",
    ),
    "rules": MessageLookupByLibrary.simpleMessage("Reglas"),
    "rulesCount": m69,
    "runTime": MessageLookupByLibrary.simpleMessage("Tiempo de ejecuci├│n"),
    "running": MessageLookupByLibrary.simpleMessage("En ejecuci├│n"),
    "runtimeConfig": MessageLookupByLibrary.simpleMessage(
      "Configuraci├│n de ejecuci├│n",
    ),
    "safeMode": MessageLookupByLibrary.simpleMessage("Modo seguro"),
    "safeModeAppTitle": m70,
    "saturation": MessageLookupByLibrary.simpleMessage("Saturaci├│n"),
    "save": MessageLookupByLibrary.simpleMessage("Guardar"),
    "saveChanges": MessageLookupByLibrary.simpleMessage(
      "┬┐Guardar los cambios?",
    ),
    "script": MessageLookupByLibrary.simpleMessage("Script"),
    "scriptModeDesc": MessageLookupByLibrary.simpleMessage(
      "Modo script: reescribe todo el perfil con un script de extensi├│n",
    ),
    "scrollToSelected": MessageLookupByLibrary.simpleMessage(
      "Ir a la selecci├│n",
    ),
    "search": MessageLookupByLibrary.simpleMessage("Buscar"),
    "seconds": MessageLookupByLibrary.simpleMessage("segundos"),
    "secondsCount": m71,
    "secretKey": MessageLookupByLibrary.simpleMessage("Clave"),
    "sectionsInEffect": m72,
    "selectAll": MessageLookupByLibrary.simpleMessage("Seleccionar todo"),
    "selectRuleSet": MessageLookupByLibrary.simpleMessage(
      "Selecciona un conjunto de reglas",
    ),
    "selectSplitStrategy": MessageLookupByLibrary.simpleMessage(
      "Selecciona una estrategia de divisi├│n",
    ),
    "selected": MessageLookupByLibrary.simpleMessage("Seleccionado"),
    "server": MessageLookupByLibrary.simpleMessage("Servidor"),
    "serviceAbnormalCount": m73,
    "serviceAllAvailable": MessageLookupByLibrary.simpleMessage(
      "Todo disponible",
    ),
    "serviceAvailable": MessageLookupByLibrary.simpleMessage("Disponible"),
    "serviceBlocked": MessageLookupByLibrary.simpleMessage("Bloqueado"),
    "serviceCheck": MessageLookupByLibrary.simpleMessage("Comprobar"),
    "serviceCheckAll": MessageLookupByLibrary.simpleMessage("Comprobar todo"),
    "serviceCheckedAt": m74,
    "serviceComingSoon": MessageLookupByLibrary.simpleMessage("Pr├│ximamente"),
    "serviceDisallowedIsp": MessageLookupByLibrary.simpleMessage(
      "ISP no permitido",
    ),
    "serviceFailed": MessageLookupByLibrary.simpleMessage(
      "Error en la comprobaci├│n",
    ),
    "serviceManage": MessageLookupByLibrary.simpleMessage(
      "Gestionar servicios",
    ),
    "serviceOriginalsOnly": MessageLookupByLibrary.simpleMessage(
      "Solo originales",
    ),
    "servicePending": MessageLookupByLibrary.simpleMessage("Sin comprobar"),
    "serviceRestricted": MessageLookupByLibrary.simpleMessage(
      "Acceso restringido",
    ),
    "serviceShownOnDashboard": MessageLookupByLibrary.simpleMessage(
      "Se muestra en el panel",
    ),
    "serviceStatus": MessageLookupByLibrary.simpleMessage(
      "Estado del servicio",
    ),
    "serviceUnavailable": MessageLookupByLibrary.simpleMessage("No disponible"),
    "serviceUnsupportedRegion": MessageLookupByLibrary.simpleMessage(
      "Regi├│n no compatible",
    ),
    "settingEntries": MessageLookupByLibrary.simpleMessage("ajustes"),
    "settings": MessageLookupByLibrary.simpleMessage("Ajustes"),
    "settingsCount": m75,
    "shareLinkUnreadable": m76,
    "shareLinksInvalid": MessageLookupByLibrary.simpleMessage(
      "No se pudo leer ning├║n proxy de los enlaces",
    ),
    "show": MessageLookupByLibrary.simpleMessage("Mostrar"),
    "showLess": MessageLookupByLibrary.simpleMessage("Contraer"),
    "showMore": MessageLookupByLibrary.simpleMessage("Expandir"),
    "showNotificationStopAction": MessageLookupByLibrary.simpleMessage(
      "Bot├│n de detener en la notificaci├│n",
    ),
    "showPassword": MessageLookupByLibrary.simpleMessage("Mostrar contrase├▒a"),
    "sidebarBlur": MessageLookupByLibrary.simpleMessage(
      "Desenfoque de la barra lateral",
    ),
    "sidebarBlurDesc": MessageLookupByLibrary.simpleMessage(
      "Muestra el escritorio desenfocado detr├бs de la ventana a trav├йs de la barra lateral",
    ),
    "silentLaunch": MessageLookupByLibrary.simpleMessage("Inicio silencioso"),
    "silentLaunchDesc": MessageLookupByLibrary.simpleMessage(
      "El inicio silencioso arranca sin mostrar la ventana.",
    ),
    "singleAdd": MessageLookupByLibrary.simpleMessage("A├▒adir uno"),
    "singleImport": MessageLookupByLibrary.simpleMessage("Importar uno"),
    "singleShareLinkOnly": MessageLookupByLibrary.simpleMessage(
      "Introduce aqu├н un solo enlace; para varios, usa la edici├│n r├бpida de la lista",
    ),
    "singleValueTip": m77,
    "size": MessageLookupByLibrary.simpleMessage("Tama├▒o"),
    "skipCertVerify": MessageLookupByLibrary.simpleMessage(
      "Omitir verificaci├│n de certificado",
    ),
    "skipDomain": MessageLookupByLibrary.simpleMessage("Omitir dominios"),
    "skipDomainDesc": MessageLookupByLibrary.simpleMessage(
      "Un dominio detectado que est├й en la lista de dominios omitidos no se usa.",
    ),
    "skipDstAddress": MessageLookupByLibrary.simpleMessage(
      "Omitir direcciones de destino",
    ),
    "skipSrcAddress": MessageLookupByLibrary.simpleMessage(
      "Omitir direcciones de origen",
    ),
    "slide": MessageLookupByLibrary.simpleMessage("Deslizar"),
    "sliders": MessageLookupByLibrary.simpleMessage("Reguladores"),
    "smartAutomatic": MessageLookupByLibrary.simpleMessage("Autom├бtico"),
    "smartAutomaticRouting": MessageLookupByLibrary.simpleMessage(
      "Selecci├│n autom├бtica para cada destino",
    ),
    "smartCollectData": MessageLookupByLibrary.simpleMessage(
      "Recopilar datos de entrenamiento",
    ),
    "smartCoreStopped": MessageLookupByLibrary.simpleMessage(
      "Inicia el servicio para ver la clasificaci├│n de Smart.",
    ),
    "smartCurrentNode": MessageLookupByLibrary.simpleMessage("Nodo actual"),
    "smartCurrentNodeUnavailable": MessageLookupByLibrary.simpleMessage(
      "Ning├║n nodo seleccionado",
    ),
    "smartDetails": MessageLookupByLibrary.simpleMessage("Detalles de Smart"),
    "smartLoadFailed": MessageLookupByLibrary.simpleMessage(
      "No se pudo cargar la clasificaci├│n de Smart.",
    ),
    "smartMostUsed": MessageLookupByLibrary.simpleMessage("Frecuente"),
    "smartNoMatchingNodes": MessageLookupByLibrary.simpleMessage(
      "No hay nodos coincidentes",
    ),
    "smartNoWeights": MessageLookupByLibrary.simpleMessage(
      "A├║n no hay clasificaci├│n de Smart",
    ),
    "smartNoWeightsTip": MessageLookupByLibrary.simpleMessage(
      "La clasificaci├│n aparece despu├йs de que Smart procese tr├бfico.",
    ),
    "smartOccasionallyUsed": MessageLookupByLibrary.simpleMessage("Ocasional"),
    "smartPinNode": MessageLookupByLibrary.simpleMessage("Fijar nodo"),
    "smartPinned": MessageLookupByLibrary.simpleMessage("Fijado"),
    "smartPolicyPriority": MessageLookupByLibrary.simpleMessage(
      "Prioridad de pol├нticas",
    ),
    "smartPreferAsn": MessageLookupByLibrary.simpleMessage(
      "Priorizar el historial de ASN",
    ),
    "smartRarelyUsed": MessageLookupByLibrary.simpleMessage("Poco frecuente"),
    "smartRefresh": MessageLookupByLibrary.simpleMessage(
      "Actualizar clasificaci├│n",
    ),
    "smartRestoreAutomatic": MessageLookupByLibrary.simpleMessage(
      "Restaurar selecci├│n autom├бtica",
    ),
    "smartSampleRate": MessageLookupByLibrary.simpleMessage(
      "Tasa de muestreo para el entrenamiento",
    ),
    "smartScore": MessageLookupByLibrary.simpleMessage("Puntuaci├│n"),
    "smartScoreExplanation": MessageLookupByLibrary.simpleMessage(
      "Las puntuaciones y categor├нas de uso proceden del n├║cleo. La puntuaci├│n no es un porcentaje.",
    ),
    "smartTitle": MessageLookupByLibrary.simpleMessage("Smart"),
    "smartUnknownUsage": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "smartUsage": MessageLookupByLibrary.simpleMessage("Uso"),
    "smartUseLightGbm": MessageLookupByLibrary.simpleMessage("Usar LightGBM"),
    "sniffProtocols": MessageLookupByLibrary.simpleMessage("Protocolos"),
    "sniffer": MessageLookupByLibrary.simpleMessage("Sniffer"),
    "snifferStatusDesc": MessageLookupByLibrary.simpleMessage(
      "El sniffer lee el dominio del tr├бfico TLS, HTTP y QUIC para que las reglas puedan aplicarse.",
    ),
    "socksPort": MessageLookupByLibrary.simpleMessage("Puerto SOCKS"),
    "softStyle": MessageLookupByLibrary.simpleMessage("Suave"),
    "sort": MessageLookupByLibrary.simpleMessage("Ordenar"),
    "source": MessageLookupByLibrary.simpleMessage("Origen"),
    "sourceIp": MessageLookupByLibrary.simpleMessage("IP de origen"),
    "specialProxy": MessageLookupByLibrary.simpleMessage("Proxy especial"),
    "specialRules": MessageLookupByLibrary.simpleMessage("Reglas especiales"),
    "spectrum": MessageLookupByLibrary.simpleMessage("Espectro"),
    "speedStatistics": MessageLookupByLibrary.simpleMessage(
      "Estad├нsticas de velocidad",
    ),
    "splitStrategy": MessageLookupByLibrary.simpleMessage(
      "Estrategia de divisi├│n",
    ),
    "splitStrategyNotEmpty": MessageLookupByLibrary.simpleMessage(
      "La estrategia de divisi├│n no puede estar vac├нa",
    ),
    "ssidsEmpty": MessageLookupByLibrary.simpleMessage("No hay SSID"),
    "stackMode": MessageLookupByLibrary.simpleMessage("Modo de pila"),
    "stackTrace": MessageLookupByLibrary.simpleMessage("Seguimiento de pila"),
    "standard": MessageLookupByLibrary.simpleMessage("Est├бndar"),
    "standardModeDesc": MessageLookupByLibrary.simpleMessage(
      "Modo est├бndar: a├▒ade reglas sobre el perfil",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Iniciar"),
    "startFromScratch": MessageLookupByLibrary.simpleMessage(
      "Empezar desde cero",
    ),
    "startVpn": MessageLookupByLibrary.simpleMessage("Iniciando VPNтАж"),
    "startupAndBackground": MessageLookupByLibrary.simpleMessage(
      "Inicio y segundo plano",
    ),
    "status": MessageLookupByLibrary.simpleMessage("Estado"),
    "statusDesc": MessageLookupByLibrary.simpleMessage(
      "Con DNS desactivado, se usa el DNS del sistema.",
    ),
    "stop": MessageLookupByLibrary.simpleMessage("Detener"),
    "stopVpn": MessageLookupByLibrary.simpleMessage("Deteniendo VPNтАж"),
    "strategy": MessageLookupByLibrary.simpleMessage("Estrategia"),
    "strictRoute": MessageLookupByLibrary.simpleMessage("Ruta estricta"),
    "strictRouteDesc": MessageLookupByLibrary.simpleMessage(
      "La ruta estricta evita que el tr├бfico, como el DNS, eluda TUN y, con IPv6 desactivado, bloquea las conexiones IPv6 de este dispositivo.",
    ),
    "style": MessageLookupByLibrary.simpleMessage("Estilo"),
    "submit": MessageLookupByLibrary.simpleMessage("Enviar"),
    "subscriptionInfo": MessageLookupByLibrary.simpleMessage(
      "Informaci├│n de la suscripci├│n",
    ),
    "sudoPasswordTitle": MessageLookupByLibrary.simpleMessage(
      "Introduce tu contrase├▒a para sudo",
    ),
    "suspended": MessageLookupByLibrary.simpleMessage("SuspendidoтАж"),
    "switchProfile": MessageLookupByLibrary.simpleMessage("Cambiar de perfil"),
    "sync": MessageLookupByLibrary.simpleMessage("Sincronizar"),
    "system": MessageLookupByLibrary.simpleMessage("Sistema"),
    "systemApp": MessageLookupByLibrary.simpleMessage("Apps del sistema"),
    "systemProxy": MessageLookupByLibrary.simpleMessage("Proxy del sistema"),
    "tab": MessageLookupByLibrary.simpleMessage("Pesta├▒a"),
    "tabAnimation": MessageLookupByLibrary.simpleMessage(
      "Animaci├│n de pesta├▒as",
    ),
    "tapIconToRetry": MessageLookupByLibrary.simpleMessage(
      "Toca el icono para reintentar",
    ),
    "tapToAuthorize": MessageLookupByLibrary.simpleMessage(
      "Toca para autorizar",
    ),
    "target": MessageLookupByLibrary.simpleMessage("Destino"),
    "tcpConcurrent": MessageLookupByLibrary.simpleMessage("TCP concurrente"),
    "testInterval": MessageLookupByLibrary.simpleMessage("Intervalo de prueba"),
    "testUrl": MessageLookupByLibrary.simpleMessage("URL de prueba"),
    "testWhenUsed": MessageLookupByLibrary.simpleMessage("Probar al usarse"),
    "textScale": MessageLookupByLibrary.simpleMessage("Escala del texto"),
    "textScalePreview": MessageLookupByLibrary.simpleMessage(
      "As├н se ver├б el texto en la app",
    ),
    "theme": MessageLookupByLibrary.simpleMessage("Tema"),
    "themeColor": MessageLookupByLibrary.simpleMessage("Color del tema"),
    "themeMode": MessageLookupByLibrary.simpleMessage("Modo del tema"),
    "tight": MessageLookupByLibrary.simpleMessage("Ajustado"),
    "time": MessageLookupByLibrary.simpleMessage("Hora"),
    "timeout": MessageLookupByLibrary.simpleMessage("Tiempo agotado"),
    "tintedStyle": MessageLookupByLibrary.simpleMessage("Tintado"),
    "tip": MessageLookupByLibrary.simpleMessage("Consejo"),
    "toggle": MessageLookupByLibrary.simpleMessage("Alternar"),
    "tolerance": MessageLookupByLibrary.simpleMessage("Tolerancia"),
    "tools": MessageLookupByLibrary.simpleMessage("Herramientas"),
    "torch": MessageLookupByLibrary.simpleMessage("Linterna"),
    "total": MessageLookupByLibrary.simpleMessage("Total"),
    "totalDownload": MessageLookupByLibrary.simpleMessage("Descargado"),
    "totalTraffic": MessageLookupByLibrary.simpleMessage("Tr├бfico total"),
    "totalUpload": MessageLookupByLibrary.simpleMessage("Subido"),
    "tproxyPort": MessageLookupByLibrary.simpleMessage("Puerto TProxy"),
    "traffic": MessageLookupByLibrary.simpleMessage("Tr├бfico"),
    "trafficPeak": m78,
    "trafficTotal": m79,
    "trafficUsage": MessageLookupByLibrary.simpleMessage("Uso de tr├бfico"),
    "transport": MessageLookupByLibrary.simpleMessage("Transporte"),
    "tun": MessageLookupByLibrary.simpleMessage("TUN"),
    "tunAuthorizationFailed": MessageLookupByLibrary.simpleMessage(
      "No se pudo autorizar TUN, por lo que se desactiv├│.",
    ),
    "tunDesc": MessageLookupByLibrary.simpleMessage(
      "TUN solo funciona en modo administrador.",
    ),
    "tunOverrideDesc": MessageLookupByLibrary.simpleMessage(
      "Las entradas a├▒adidas aqu├н sustituyen los ajustes de TUN de todos los perfiles; lo que no a├▒adas conserva el ajuste del propio perfil. Las entradas que a├▒ade un perfil personalizado tienen prioridad.",
    ),
    "turnOff": MessageLookupByLibrary.simpleMessage("Desactivar"),
    "turnOn": MessageLookupByLibrary.simpleMessage("Activar"),
    "udpRelayMode": MessageLookupByLibrary.simpleMessage(
      "Modo de retransmisi├│n UDP",
    ),
    "udpTimeout": MessageLookupByLibrary.simpleMessage("Tiempo de espera UDP"),
    "udpTimeoutDesc": MessageLookupByLibrary.simpleMessage(
      "El tiempo de espera UDP se indica en segundos y solo funciona con las pilas gvisor, system y mixed.",
    ),
    "ultra": MessageLookupByLibrary.simpleMessage("Ultra"),
    "undo": MessageLookupByLibrary.simpleMessage("Deshacer"),
    "unifiedDelay": MessageLookupByLibrary.simpleMessage("Latencia unificada"),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "unknownNetworkError": MessageLookupByLibrary.simpleMessage(
      "Error de red desconocido",
    ),
    "unmaximize": MessageLookupByLibrary.simpleMessage("Restaurar tama├▒o"),
    "unnamed": MessageLookupByLibrary.simpleMessage("Sin nombre"),
    "unpinWindow": MessageLookupByLibrary.simpleMessage("Desfijar ventana"),
    "update": MessageLookupByLibrary.simpleMessage("Actualizar"),
    "upload": MessageLookupByLibrary.simpleMessage("Subida"),
    "uploadBandwidth": MessageLookupByLibrary.simpleMessage(
      "Ancho de banda de subida",
    ),
    "url": MessageLookupByLibrary.simpleMessage("URL"),
    "urlTip": m80,
    "useHosts": MessageLookupByLibrary.simpleMessage("Usar hosts"),
    "useSystemHosts": MessageLookupByLibrary.simpleMessage(
      "Usar hosts del sistema",
    ),
    "usedShort": MessageLookupByLibrary.simpleMessage("usado"),
    "usedTraffic": MessageLookupByLibrary.simpleMessage("Tr├бfico usado"),
    "userAgent": MessageLookupByLibrary.simpleMessage("User-Agent"),
    "username": MessageLookupByLibrary.simpleMessage("Usuario"),
    "value": MessageLookupByLibrary.simpleMessage("Valor"),
    "view": MessageLookupByLibrary.simpleMessage("Ver"),
    "virtualIpv4": MessageLookupByLibrary.simpleMessage("IPv4 virtual"),
    "vividStyle": MessageLookupByLibrary.simpleMessage("Vivo"),
    "vpnConfigChangeDetected": MessageLookupByLibrary.simpleMessage(
      "Se detect├│ un cambio en la configuraci├│n relacionada con la VPN",
    ),
    "vpnEnableDesc": MessageLookupByLibrary.simpleMessage(
      "La VPN enruta autom├бticamente todo el tr├бfico del sistema a trav├йs de VpnService.",
    ),
    "webDAVConfiguration": MessageLookupByLibrary.simpleMessage(
      "Configuraci├│n de WebDAV",
    ),
    "whitelistMode": MessageLookupByLibrary.simpleMessage("Modo lista blanca"),
    "writeToSystem": MessageLookupByLibrary.simpleMessage(
      "Escribir en el sistema",
    ),
    "writeToSystemDesc": MessageLookupByLibrary.simpleMessage(
      "Escribir en el sistema tambi├йn ajusta el reloj del sistema; Android lo ignora.",
    ),
    "yearsAgo": m81,
    "yearsAgoShort": m82,
    "yes": MessageLookupByLibrary.simpleMessage("S├н"),
    "zhCN": MessageLookupByLibrary.simpleMessage("Chino simplificado"),
  };
}
