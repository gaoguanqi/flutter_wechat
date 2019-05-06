import 'package:flutter/material.dart';

class HomeData {
  const HomeData({
    @required this.avatar,
    @required this.name,
    @required this.content,
    @required this.time,
  });

  final String avatar;
  final String name;
  final String content;
  final String time;
}

class HomePageData {
  final List<HomeData> list = [
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
      name: 'Maurice Sutton',
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/women/76.jpg',
      name: 'Jerry',
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
      name: 'Maurice Sutton',
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/women/76.jpg',
      name: 'Jerry',
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
      name: 'Maurice Sutton',
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/women/76.jpg',
      name: 'Jerry',
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
      name: 'Maurice Sutton',
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/women/76.jpg',
      name: 'Jerry',
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
      name: 'Maurice Sutton',
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/women/76.jpg',
      name: 'Jerry',
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
      name: 'Maurice Sutton',
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/women/76.jpg',
      name: 'Jerry',
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
      name: 'Maurice Sutton',
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/women/76.jpg',
      name: 'Jerry',
    )
  ];

  static HomePageData mock() {
    return HomePageData();
  }
}
