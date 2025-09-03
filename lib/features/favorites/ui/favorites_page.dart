import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../services/file_cache/file_cache.dart';

@RoutePage()
class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final files = ref.watch(cachedFilesProvider);

    // final fileCache = ref.watch(fileCacheProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite,
              size: 64,
              color: Colors.red,
            ),
            SizedBox(height: 16),
            Text(
              'Your Favorite Coffee Images',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            files.when(
              data: (data) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final fileCache = ref.watch(fileCacheProvider);
                      return ListTile(
                        title: Text(data[index].filename),
                        leading: Image.memory(data[index].imageBytes),
                        trailing: IconButton(
                          onPressed: () {
                            fileCache.deleteFile(data[index].filename);
                            ref.refresh(cachedFilesProvider);
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      );
                    },
                  ),
                );
              },
              error: (error, stackTrace) => Text('Error: $error'),
              loading: () => const CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
