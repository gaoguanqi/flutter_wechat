import 'package:flutter/material.dart';

class FriendData {
  const FriendData({
    @required this.avatar,
    @required this.title,
  }):assert(avatar != null);

  final String avatar;
  final String title;
}


class FriendPageData {
  final List<FriendData> list = [
    const FriendData(
        avatar: 'assets/images/ic_file_transfer.png',
        title: '文件传输助手'
    ),
    const FriendData(
      avatar: 'assets/images/ic_tx_news.png',
      title: '腾讯新闻'
    ),
    const FriendData(
        avatar: 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1122649470,955539824&fm=27&gp=0.jpg',
        title: '小姐姐'
    ),   const FriendData(
        avatar: 'assets/images/ic_tx_news.png',
        title: '腾讯新闻'
    ),
    const FriendData(
        avatar: 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1122649470,955539824&fm=27&gp=0.jpg',
        title: '小姐姐'
    ),   const FriendData(
        avatar: 'assets/images/ic_tx_news.png',
        title: '腾讯新闻'
    ),
    const FriendData(
        avatar: 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1122649470,955539824&fm=27&gp=0.jpg',
        title: '小姐姐'
    ),   const FriendData(
        avatar: 'assets/images/ic_tx_news.png',
        title: '腾讯新闻'
    ),
    const FriendData(
        avatar: 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1122649470,955539824&fm=27&gp=0.jpg',
        title: '小姐姐'
    )
  ];

  static FriendPageData mock() {
    return FriendPageData();
  }
}
