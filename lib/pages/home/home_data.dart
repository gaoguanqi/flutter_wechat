import 'package:flutter/material.dart';

class HomeData {
  const HomeData({
    @required this.avatar,
    @required this.title,
    @required this.des,
    @required this.time,
  });

  final String avatar;
  final String title;
  final String des;
  final String time;
}

class HomePageData {
  final List<HomeData> list = [
    const HomeData(
        avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
        title: 'Maurice Sutton',
        des: 'desdesdesdesdesdesdesdesdesdesdesdesdesdesdesdesdes',
        time: '09.10'),
    const HomeData(
        avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
        title: 'Maurice Sutton',
        des: 'desdesdesdesdesdesdesdesdesdesdesdesdesdesdesdesdes',
        time: '09.10'),
    const HomeData(
        avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
        title: 'Maurice Sutton',
        des: 'desdesdesdesdesdesdesdesdesdesdesdesdesdesdesdesdes',
        time: '09.10'),
    const HomeData(
        avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
        title: 'Maurice Sutton',
        des: 'desdesdesdesdesdesdesdesdesdesdesdesdesdesdesdesdes',
        time: '09.10'),
    const HomeData(
        avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
        title: 'Maurice Sutton',
        des: 'desdesdesdesdesdesdesdesdesdesdesdesdesdesdesdesdes',
        time: '09.10'),
    const HomeData(
        avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
        title: 'Maurice Sutton',
        des: 'desdesdesdesdesdesdesdesdesdesdesdesdesdesdesdesdes',
        time: '09.10'),
    const HomeData(
        avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
        title: 'Maurice Sutton',
        des: 'desdesdesdesdesdesdesdesdesdesdesdesdesdesdesdesdes',
        time: '09.10'),
    const HomeData(
        avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
        title: 'Maurice Sutton',
        des: 'desdesdesdesdesdesdesdesdesdesdesdesdesdesdesdesdes',
        time: '09.10'),
    const HomeData(
        avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
        title: 'Maurice Sutton',
        des: 'desdesdesdesdesdesdesdesdesdesdesdesdesdesdesdesdes',
        time: '09.10'),
    const HomeData(
        avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
        title: 'Maurice Sutton',
        des: 'desdesdesdesdesdesdesdesdesdesdesdesdesdesdesdesdes',
        time: '09.10'),
    const HomeData(
        avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
        title: 'Maurice Sutton',
        des: 'desdesdesdesdesdesdesdesdesdesdesdesdesdesdesdesdes',
        time: '09.10'),
    const HomeData(
        avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
        title: 'Maurice Sutton',
        des: 'desdesdesdesdesdesdesdesdesdesdesdesdesdesdesdesdes',
        time: '09.10')
  ];

  static HomePageData mock() {
    return HomePageData();
  }
}
