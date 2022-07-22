import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sl_flutter_widgets/components/texts/sl_text_hyperlink.dart';

void main() {
  const String _label = 'label';
  const String _url = 'url';
  group('hyper link text test', () {
    testWidgets('should show label', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
            home: TextHyperlink(
          url: _url,
          label: _label,
          containerMargin: 10,
        )),
      );

      await tester.pumpAndSettle();

      expect(find.byType(TextHyperlink), findsOneWidget);
      expect(find.textContaining(_label), findsOneWidget);
    });
  });
}

class _TestApp extends StatefulWidget {
  const _TestApp(this.label, this.url, this.containerMargin);

  final String label;
  final String url;
  final double containerMargin;

  @override
  State<_TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<_TestApp> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: TextHyperlink(
          label: widget.label,
          containerMargin: widget.containerMargin,
          url: widget.url,
        ),
      );
}
