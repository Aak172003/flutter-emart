import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/profile_Screen/components/details_card.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          // padding: EdgeInsets.all(8),
          child: Column(
            children: [
              // edit profile
              Align(
                alignment: Alignment.topRight,
                child: const Icon(Icons.edit, color: whiteColor),
              ).onTap(() {}),
              Row(
                children: [
                  Image.asset(
                    imgProfile2,
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),

                  Expanded(
                    child: Column(
                      children: [
                        "Dummy User".text.fontFamily(semibold).white.make(),
                        "customer@example.com".text.white.make(),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: whiteColor),
                    ),
                    onPressed: () {},
                    child: "Logout".text.fontFamily(semibold).white.make(),
                  ),
                ],
              ),

              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DetailsCard(
                    count: "00",
                    title: "in your cart",
                    width: context.screenWidth / 3.5,
                  ),
                  DetailsCard(
                    count: "32",
                    title: "in your wishlist",
                    width: context.screenWidth / 3.5,
                  ),
                  DetailsCard(
                    count: "675",
                    title: "your orders",
                    width: context.screenWidth / 3.5,
                  ),
                ],
              ),

              // button sections
              20.heightBox,
              ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const Divider(color: lightGrey);
                    },
                    itemCount: profileButtonList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.asset(
                          profileButtonIcons[index],
                          width: 22,
                        ),
                        title: profileButtonList[index].text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                      );
                    },
                  ).box.white.rounded
                  .padding(EdgeInsets.symmetric(horizontal: 16))
                  .margin(EdgeInsets.all(12))
                  .shadowSm
                  .make()
                  .box
                  .color(redColor)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
