import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart'; // ErrorScreenのために追加
import 'package:mini_moshi_app/core/routing/app_routes.dart';
import 'package:mini_moshi_app/features/home/screens/home_screen.dart'; // あとで作成
import 'package:mini_moshi_app/features/test_selection/screens/test_selection_screen.dart'; // あとで作成

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.home, // アプリ起動時の初期画面
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.home,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.testSelection,
      builder: (BuildContext context, GoRouterState state) {
        return const TestSelectionScreen();
      },
    ),
    // 今後、他のルートもここに追加していく
    // 例:
    // GoRoute(
    //   path: AppRoutes.testSolving,
    //   builder: (BuildContext context, GoRouterState state) {
    //     final testId = state.pathParameters['testId']!;
    //     return TestSolvingScreen(testId: testId); // TestSolvingScreenは後で作成
    //   },
    // ),
  ],
  // エラー画面の定義 (オプション)
  errorBuilder: (context, state) => ErrorScreen(error: state.error),
);

// 簡単なエラー画面の例 (core/routing/app_router.dart 内、または別ファイルに定義)
class ErrorScreen extends StatelessWidget {
  final Exception? error;
  const ErrorScreen({super.key, this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('エラー')),
      body: Center(child: Text(error?.toString() ?? 'ページが見つかりませんでした。')),
    );
  }
}
