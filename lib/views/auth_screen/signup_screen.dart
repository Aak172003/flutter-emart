import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_button_widget.dart';
import 'package:emart_app/widgets_common/custom_textfirld.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox, // this height is for applogowidget

              "Join the $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,

              Column(
                    children: [
                      customTextField(hint: namePlaceholder, title: name),

                      customTextField(hint: emailPlaceholder, title: email),
                      customTextField(
                        hint: passwordPlaceholder,
                        title: password,
                      ),
                      customTextField(
                        hint: passwordPlaceholder,
                        title: reTypePassword,
                      ),

                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: forgetPassword.text.make(),
                        ),
                      ),

                      5.heightBox,

                      Row(
                        children: [
                          Checkbox(
                            checkColor: redColor,
                            value: isCheck,
                            onChanged: (newValue) {
                              setState(() {
                                isCheck = newValue;
                              });
                            },
                          ),
                          10.widthBox,

                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "I agree to the ",
                                    style: TextStyle(
                                      fontFamily: regular,
                                      color: fontGrey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: termsAndConditions,
                                    style: TextStyle(
                                      fontFamily: regular,
                                      color: redColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " &",
                                    style: TextStyle(
                                      fontFamily: regular,
                                      color: redColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: privacyPolicy,
                                    style: TextStyle(
                                      fontFamily: regular,
                                      color: redColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      customButton(
                        color: isCheck == true ? redColor : lightGrey,
                        title: signup,
                        textColor: whiteColor,
                        onPress: () {},
                      ).box.width(context.screenWidth - 50).make(),

                      10.heightBox,

                      // Wrapping into gesture detactor of velocity x
                      // RichText(
                      //   text: TextSpan(
                      //     children: [
                      //       TextSpan(
                      //         text: alreadyHaveAnAccount,
                      //         style: TextStyle(
                      //           fontFamily: bold,
                      //           color: fontGrey,
                      //         ),
                      //       ),
                      //       TextSpan(
                      //         text: login,
                      //         style: TextStyle(
                      //           fontFamily: bold,
                      //           color: redColor,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ).onTap(() {
                      //   Get.back();
                      // }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          alreadyHaveAnAccount.text.color(fontGrey).make(),
                          login.text.color(redColor).make().onTap(() {
                            Get.back();
                          }),
                        ],
                      ),
                    ],
                  ).box.white.rounded
                  .padding(EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
