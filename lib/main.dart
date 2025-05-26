import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_mosi/app_widget.dart'; // あとで作成

// Hiveの初期化なども将来的にここで行う
Future<void> main() async {
  // Flutter Engineのウィジェットバインディングを初期化 (非同期処理をmainで呼び出す場合)
  WidgetsFlutterBinding.ensureInitialized();

  // Hiveの初期化処理などをここに追加 (今回は省略)
  // await Hive.initFlutter();
  // Hive.registerAdapter(...);

  runApp(
    const ProviderScope(
      // Riverpodを使うためにアプリ全体をProviderScopeでラップ
      child: AppWidget(),
    ),
  );
}
