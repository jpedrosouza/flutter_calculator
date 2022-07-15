// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_calculator/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Calculate 15 + 25 at calculator', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify calculator buttons.
    expect(find.text('0'), findsWidgets);
    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
    expect(find.text('4'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
    expect(find.text('6'), findsOneWidget);
    expect(find.text('7'), findsOneWidget);
    expect(find.text('8'), findsOneWidget);
    expect(find.text('9'), findsOneWidget);
    expect(find.text('%'), findsOneWidget);
    expect(find.text('('), findsOneWidget);
    expect(find.text(')'), findsOneWidget);
    expect(find.text('/'), findsOneWidget);
    expect(find.text('X'), findsOneWidget);
    expect(find.text('-'), findsOneWidget);
    expect(find.text('+'), findsOneWidget);
    expect(find.text('='), findsOneWidget);
    expect(find.text('<='), findsOneWidget);
    expect(find.text('.'), findsOneWidget);

    // Tap firt number button to set 15 at calculator display.
    await tester.tap(find.text('1'));
    await tester.tap(find.text('5'));
    await tester.pump();

    // Check if display is 15.
    expect(find.text('15'), findsOneWidget);

    // Tap + button to add 15 to calculator display.
    await tester.tap(find.text('+'));
    await tester.pump();

    // Tap second number button to set 25 at calculator display.
    await tester.tap(find.text('2'));
    await tester.tap(find.text('5'));
    await tester.pump();

    // Check if display is 25.
    expect(find.text('25'), findsOneWidget);

    // Tap = button to calculate 15 + 25 and display 40.0 at calculator display.
    await tester.tap(find.text('='));
    await tester.pump();

    // Verify calculator display.
    expect(find.text('40.0'), findsOneWidget);
  });
}
