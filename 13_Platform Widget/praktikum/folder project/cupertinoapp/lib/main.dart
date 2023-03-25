import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';



void main() {
  return runApp(const CupertinoStoreApp());
}

final _themeDark = const CupertinoThemeData.raw(
  Brightness.dark,
  null,
  null,
  null,
  null,
  null,
);
class CupertinoStoreApp extends StatelessWidget {
  const CupertinoStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return CupertinoApp(
      theme: _themeDark,
      home: CupertinoStoreHomePage(),
    );
  }
}
class CupertinoStoreHomePage extends StatelessWidget {
  const CupertinoStoreHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('CupertinoApp'),
      ),

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is CupertinoApp'),
          ],
        ),
      ),
    );
  }
}
