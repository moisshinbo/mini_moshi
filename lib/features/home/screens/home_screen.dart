import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // 画面遷移のためにimport
import 'package:mini_mosi/core/routing/app_routes.dart'; // ルート名をimport

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ミニ模試 - ホーム')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('ようこそ！ミニ模試アプリへ', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // テスト選択画面へ遷移
                context.go(AppRoutes.testSelection);
              },
              child: const Text('テストを選択する'),
            ),
            // 今後ここにモチベーション情報などを表示
          ],
        ),
      ),
    );
  }
}
