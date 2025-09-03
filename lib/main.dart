import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import 'common/app.dart';
import 'services/file_cache/file_cache_impl.dart';
import 'services/file_cache/file_cache_providers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // app initialization logic
  final appDirectory = await getApplicationDocumentsDirectory();
  final fileCache = FileCacheImpl.local(appDirectory);

  runApp(
    ProviderScope(
      overrides: [
        fileCacheProvider.overrideWithValue(fileCache),
      ],
      child: MyApp(),
    ),
  );
}
