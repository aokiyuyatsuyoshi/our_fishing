import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'Toppage/Toppage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final selectedIndex = StateProvider((ref) => 0); //グローバルに定義
final mapControllerProvider = StateProvider((ref) => GoogleMapController);
