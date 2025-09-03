// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:vgv_assessment/common/main_shell_page.dart' as _i2;
import 'package:vgv_assessment/features/favorites/ui/favorites_page.dart'
    as _i1;
import 'package:vgv_assessment/features/matcher/ui/matcher_page.dart' as _i3;

/// generated route for
/// [_i1.FavoritesPage]
class FavoritesRoute extends _i4.PageRouteInfo<void> {
  const FavoritesRoute({List<_i4.PageRouteInfo>? children})
    : super(FavoritesRoute.name, initialChildren: children);

  static const String name = 'FavoritesRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.FavoritesPage();
    },
  );
}

/// generated route for
/// [_i2.MainShellPage]
class MainShellRoute extends _i4.PageRouteInfo<void> {
  const MainShellRoute({List<_i4.PageRouteInfo>? children})
    : super(MainShellRoute.name, initialChildren: children);

  static const String name = 'MainShellRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.MainShellPage();
    },
  );
}

/// generated route for
/// [_i3.MatcherPage]
class MatcherRoute extends _i4.PageRouteInfo<void> {
  const MatcherRoute({List<_i4.PageRouteInfo>? children})
    : super(MatcherRoute.name, initialChildren: children);

  static const String name = 'MatcherRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.MatcherPage();
    },
  );
}
