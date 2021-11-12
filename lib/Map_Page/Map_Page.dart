import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:untitled1/widget/posting_floating_button.dart';

import '../provider_model.dart';
import 'Google_Map_widget.dart';

class MapPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isPlane = useProvider(mapControllerProvider).state;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.9,
            child: Stack(
              children: [
                MapsDemo(
                  isPlanePicture: isPlane,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Slidable(
                    actionPane: SlidableScrollActionPane(),
                    secondaryActions: [
                      SafeArea(
                        child: IconSlideAction(
                          caption: '地形マップ',
                          color: Colors.deepOrange,
                          icon: Icons.map,
                          onTap: () {
                            context.read(mapControllerProvider).state = false;
                          },
                        ),
                      ),
                      SafeArea(
                        child: IconSlideAction(
                          caption: '航空写真',
                          color: Colors.blue,
                          icon: Icons.airplanemode_active,
                          onTap: () {
                            context.read(mapControllerProvider).state = true;
                          },
                        ),
                      ),
                    ],
                    child: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton.icon(
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 8,
                            ),
                            label: Shimmer.fromColors(
                              baseColor: Colors.white,
                              highlightColor: Colors.black,
                              direction: ShimmerDirection.rtl,
                              child: Text(
                                'MAP MENU',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              onPrimary: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: postFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
