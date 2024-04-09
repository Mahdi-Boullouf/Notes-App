// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:notes_app/features/home/ui/pages/home_screen.dart' as _i2;
import 'package:notes_app/features/notes/ui/pages/add_notix.dart' as _i1;
import 'package:notes_app/features/notes/ui/pages/note_screen.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AddNotixRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddNotixScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    NoteRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.NoteScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddNotixScreen]
class AddNotixRoute extends _i4.PageRouteInfo<void> {
  const AddNotixRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AddNotixRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddNotixRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.NoteScreen]
class NoteRoute extends _i4.PageRouteInfo<void> {
  const NoteRoute({List<_i4.PageRouteInfo>? children})
      : super(
          NoteRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoteRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
