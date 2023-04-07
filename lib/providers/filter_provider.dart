import 'package:flutter_riverpod/flutter_riverpod.dart';

// State of filter
final filterUsed = StateProvider.autoDispose<bool>((_) => false);
