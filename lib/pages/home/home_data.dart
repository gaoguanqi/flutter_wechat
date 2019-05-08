import 'package:flutter/material.dart';

class HomeData {
  const HomeData({
    @required this.avatar,
    @required this.title,
    this.titleColor,
    this.des,
    this.time,
    this.isMute = false,
    this.displayDot = false,
    this.isGroup = false,
    this.unreadMessageCount = 0
  }):assert(avatar != null);

  final String avatar;
  final String title;
  final int titleColor;
  final String des;
  final String time;
  final bool isMute; // 是否静音
  final bool displayDot;
  final bool isGroup; // 是否是群组
  final int unreadMessageCount; //未读消息数量

  bool isAvatarFormNet() => avatar.startsWith('https') || avatar.startsWith('http');
}




class HomePageData {
  final List<HomeData> list = [
    const HomeData(
        avatar: 'assets/images/ic_file_transfer.png',
        title: '文件传输助手',
        des: '',
        time: '19:56',
      displayDot : true,
    ),
    const HomeData(
      avatar: 'assets/images/ic_tx_news.png',
      title: '腾讯新闻',
      des: '豪车与出租车刮擦 俩车主划拳定责',
      time: '17:20'),
    const HomeData(
      avatar: 'assets/images/ic_wx_games.png',
      title: '微信游戏',
      titleColor: 0xff586b95,
      des: '25元现金助力开学季！',
      time: '17:12'),
    const HomeData(
        avatar: 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1122649470,955539824&fm=27&gp=0.jpg',
        title: '小姐姐',
        des: '今晚要一起去吃肯德基吗？',
        time: '17:56',
        isMute: true,
        unreadMessageCount: 0),
    const HomeData(
      avatar: 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1641235249,638716010&fm=27&gp=0.jpg',
      title: '小兔兔',
      des: '晚自习是什么来着？你知道吗，看到的话赶紧回复我',
      time: '17:58',
      isMute: false,
      unreadMessageCount: 3,
    ),
    const HomeData(
      avatar: 'assets/images/ic_fengchao.png',
      title: '蜂巢智能柜',
      titleColor: 0xff586b95,
      des: '喷一喷，竟比洗牙还神奇！5秒钟还你一个漂亮洁白的口腔。',
      time: '17:12',
    ),
    const HomeData(
        avatar: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1902767009,2920248927&fm=27&gp=0.jpg',
        title: '大神组',
        titleColor: 0xff586b95,
        des: '25元现金助力开学季！',
        isGroup: true,
        time: '17:12',
      unreadMessageCount: 3
    ),
    const HomeData(
      avatar: 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2089798413,2081992102&fm=27&gp=0.jpg',
      title: 'Lily',
      des: '今天要去运动场锻炼吗？',
      time: '昨天',
      isMute: false,
      unreadMessageCount: 99,
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/men/10.jpg',
      title: '汤姆丁',
      des: '今晚要一起去吃肯德基吗？',
      time: '17:56',
      isMute: true,
      unreadMessageCount: 0,
    ),
    const HomeData(
      avatar: 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1662356546,3155434087&fm=27&gp=0.jpg',
      title: 'Tina Morgan',
      des: '晚自习是什么来着？你知道吗，看到的话赶紧回复我',
      time: '17:58',
      isMute: false,
      unreadMessageCount: 3,
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/women/57.jpg',
      title: 'Lily',
      des: '今天要去运动场锻炼吗？',
      time: '昨天',
      isMute: false,
      unreadMessageCount: 0,
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/men/10.jpg',
      title: '汤姆丁',
      des: '今晚要一起去吃肯德基吗？',
      time: '17:56',
      isMute: true,
      unreadMessageCount: 0,
    ),
    const HomeData(
      avatar: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=480194109,2955193021&fm=27&gp=0.jpg',
      title: 'Day',
      des: '今天要去运动场锻炼吗？',
      time: '昨天',
      isMute: false,
      unreadMessageCount: 0,
    ),
    const HomeData(
      avatar: 'https://randomuser.me/api/portraits/women/10.jpg',
      title: 'Tina Morgan',
      des: '晚自习是什么来着？你知道吗，看到的话赶紧回复我',
      time: '17:58',
      isMute: false,
      unreadMessageCount: 1,
    )
  ];

  static HomePageData mock() {
    return HomePageData();
  }
}
