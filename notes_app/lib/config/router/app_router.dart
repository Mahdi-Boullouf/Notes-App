import 'package:auto_route/annotations.dart';
import 'package:auto_route/src/route/auto_route_config.dart';
import 'package:notes_app/config/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter{
  @override
  // TODO: implement routes
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page,initial: true),
    AutoRoute(page: AddNotixRoute.page,),
    AutoRoute(page: NoteRoute.page,)


  ];

}