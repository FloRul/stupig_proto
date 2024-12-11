import 'package:flutter/material.dart';

extension FutureBuilderX<T> on Future<T> {
  Widget when({
    required Widget Function(T data) data,
    required Widget Function(Object error, StackTrace? stackTrace) error,
    required Widget Function() loading,
  }) {
    return FutureBuilder<T?>(
      future: this,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return data(snapshot.data as T);
        }
        if (snapshot.hasError) {
          return error(snapshot.error!, snapshot.stackTrace);
        }
        return loading();
      },
    );
  }
}
