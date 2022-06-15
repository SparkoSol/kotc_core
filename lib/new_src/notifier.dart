import 'package:flutter/material.dart';

///
enum Events {
  sound,
  music,
  global,
}

///
typedef EventCallback = void Function(Events event);

///
class EventNotifier {
  final _listeners = <EventCallback>[];

  ///
  void addListener(EventCallback callback) {
    _listeners.add(callback);
  }

  ///
  void removeListener(EventCallback callback) {
    _listeners.remove(callback);
  }

  ///
  void notifyListeners([Events event = Events.global]) {
    for (var e in _listeners) {
      e(event);
    }
  }
}

abstract class EventControlledWidget extends StatefulWidget {
  const EventControlledWidget({Key? key, required this.controller})
      : super(key: key);

  final EventNotifier controller;
}

mixin EventControlledState<T extends EventControlledWidget> on State<T> {
  @override
  @mustCallSuper
  void initState() {
    super.initState();
    widget.controller.addListener(rebuild);
  }

  void rebuild(Events event) {
    setState(() {});
  }

  @override
  void didUpdateWidget(covariant oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.controller != oldWidget.controller) {
      oldWidget.controller.removeListener(rebuild);
      widget.controller.addListener(rebuild);
    }
  }

  @override
  @mustCallSuper
  void dispose() {
    widget.controller.removeListener(rebuild);
    super.dispose();
  }
}
