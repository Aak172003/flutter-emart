import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(title: title!.text.fontFamily(bold).white.make()),
      ),
    );
  }
}
