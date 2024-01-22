import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import '../../main.dart';
import '../constant/constant.dart';

@immutable
class ApplicationInit {
  const ApplicationInit._();

  static EasyLocalization easyLocalization({required MyApp child}) {

    return EasyLocalization(
      supportedLocales:supportedLocales,
      path:lang_path,
      fallbackLocale:TR_LOCALE,
      child: child,
    );
}
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  }
}
