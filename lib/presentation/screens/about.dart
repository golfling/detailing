import 'dart:async';

import 'package:detailing/presentation/design/social_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final _mapController = Completer<YandexMapController>();
  final List<MapObject> mapObjects = [];

  static const Point _point = Point(latitude: 52.07038, longitude: 23.73811);
  final MapObjectId circleId = const MapObjectId('circle');

  @override
  Widget build(BuildContext context) {
    final circle = Circle(
      mapId: circleId,
      center: const Point(latitude: 52.07038, longitude: 23.73811),
      radius: 20,
      strokeColor: Colors.blue[700]!,
      fillColor: Colors.blue[300]!,
      onTap: (self, point) => print('Tapped me at $point'),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('О нас'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: YandexMap(
              mapObjects: mapObjects,
              onMapCreated: (controller) {
                mapObjects.add(circle);
                setState(() {});
                _mapController.complete(controller);
                controller.moveCamera(
                  CameraUpdate.newCameraPosition(
                      const CameraPosition(target: _point)),
                );
              },
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(16),
              childAspectRatio: 1.8,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 2,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('АДРЕС'),
                    Text('Брест, ул. Рябиновая 43'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('КОНТАКТЫ ДЛЯ СВЯЗИ'),
                    Text('''
+375 (29) 826-33-70
+375 (33) 602-07-05'''),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('ВРЕМЯ РАБОТЫ'),
                    Text('''
Пн-Пт 09:00 – 19:00
Сб 09:00 – 16:00 
Вск выходной'''),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        SocialIcons.vkontakte,
                        color: Colors.white,
                      ),
                      splashRadius: 20,
                      splashColor: Theme.of(context).primaryColorLight,
                      onPressed: () =>
                          launchUrlString('https://vk.com/detailing_brest'),
                    ),
                    IconButton(
                      icon: const Icon(
                        SocialIcons.instagram,
                        color: Colors.white,
                      ),
                      splashRadius: 20,
                      splashColor: Theme.of(context).primaryColorLight,
                      onPressed: () => launchUrlString(
                          'https://www.instagram.com/Detailing_brest/'),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.web,
                        color: Colors.white,
                      ),
                      splashColor: Theme.of(context).primaryColorLight,
                      splashRadius: 20,
                      onPressed: () =>
                          launchUrlString('https://detailing-brest.by/'),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
