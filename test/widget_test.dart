// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:mini_mosi/app_widget.dart'; // Import AppWidget
// main.dart is not directly used here for widget testing AppWidget usually.
// If ProviderScope is needed at the root, it would be wrapped here.
// For now, let's assume AppWidget itself is the root for this test,
// or it's simple enough not to need ProviderScope for this basic test.

void main() {
  testWidgets('App loads and shows home screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // If AppWidget needs ProviderScope, wrap it:
    // await tester.pumpWidget(const ProviderScope(child: AppWidget()));
    // For now, directly pumping AppWidget as it's simpler.
    await tester.pumpWidget(const AppWidget());

    // Verify that the HomeScreen is shown (e.g., by checking for its title or unique text).
    // The HomeScreen contains 'ようこそ！ミニ模試アプリへ'.
    expect(find.text('ようこそ！ミニ模試アプリへ'), findsOneWidget);

    // Example of a more specific check if needed:
    // expect(find.byType(HomeScreen), findsOneWidget);
  });
}
