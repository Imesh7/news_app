// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:news_app/feature/detail/detail_screen.dart' as _i1;
import 'package:news_app/feature/detail/detail_webview.dart' as _i2;
import 'package:news_app/feature/home/data/models/top_headline_news_model.dart'
    as _i6;
import 'package:news_app/feature/home/ui/home_screen.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>(
          orElse: () => const DetailRouteArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DetailScreen(
          key: args.key,
          article: args.article,
        ),
      );
    },
    DetailWebview.name: (routeData) {
      final args = routeData.argsAs<DetailWebviewArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailWebview(
          key: args.key,
          url: args.url,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.DetailScreen]
class DetailRoute extends _i4.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    _i5.Key? key,
    _i6.Article? article,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            key: key,
            article: article,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const _i4.PageInfo<DetailRouteArgs> page =
      _i4.PageInfo<DetailRouteArgs>(name);
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    this.article,
  });

  final _i5.Key? key;

  final _i6.Article? article;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, article: $article}';
  }
}

/// generated route for
/// [_i2.DetailWebview]
class DetailWebview extends _i4.PageRouteInfo<DetailWebviewArgs> {
  DetailWebview({
    _i5.Key? key,
    required String url,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          DetailWebview.name,
          args: DetailWebviewArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailWebview';

  static const _i4.PageInfo<DetailWebviewArgs> page =
      _i4.PageInfo<DetailWebviewArgs>(name);
}

class DetailWebviewArgs {
  const DetailWebviewArgs({
    this.key,
    required this.url,
  });

  final _i5.Key? key;

  final String url;

  @override
  String toString() {
    return 'DetailWebviewArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
