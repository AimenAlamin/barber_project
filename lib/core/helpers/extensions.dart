import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension NavigationExtension on BuildContext {
  void pop() => GoRouter.of(this).pop();
  
  void pushNamed(String routeName) => GoRouter.of(this).push(routeName);
  
  void goNamed(String routeName) => GoRouter.of(this).go(routeName);
  
  void pushNamedWithParams(String routeName, Map<String, dynamic> params) {
    GoRouter.of(this).push(routeName, extra: params);
  }
}

extension StringExtension on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}

extension MapExtension<K, V> on Map<K, V>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}
