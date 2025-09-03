import 'package:file/local.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import 'common/app.dart';
import 'services/file_cache/file_cache.dart';
import 'services/file_cache/file_cache_impl.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appDirectory = await getApplicationDocumentsDirectory();
  const fs = LocalFileSystem();
  final fileCache = FileCacheImpl(root: fs.directory(appDirectory.path));

  runApp(
    ProviderScope(
      overrides: [
        fileCacheProvider.overrideWithValue(fileCache),
      ],
      child: MyApp(),
    ),
  );
}
