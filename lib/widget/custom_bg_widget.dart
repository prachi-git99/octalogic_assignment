import 'package:flutter_svg/svg.dart';
import 'package:vehical/consts/consts.dart';

class CustomBgWidget extends StatelessWidget {
  final Widget child;
  const CustomBgWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(commonPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/$logoImg", // Path to your SVG file
              height: size.height * 0.3,
            ),
            const SizedBox(height: marginMedium),
            child
          ],
        ),
      ),
    );
  }
}
