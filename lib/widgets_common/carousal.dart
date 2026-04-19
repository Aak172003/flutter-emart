import 'package:emart_app/consts/consts.dart';

Widget carousal({required List<String> list}) {
  return VxSwiper.builder(
    autoPlay: true,
    height: 150,
    enlargeCenterPage: true,
    itemCount: list.length,
    itemBuilder: (context, index) {
      return Image.asset(list[index], fit: BoxFit.cover).box.rounded
          .clip(Clip.antiAlias)
          .margin(const EdgeInsets.symmetric(horizontal: 8))
          .make();
    },
  );
}
