import 'package:vehical/consts/consts.dart';
import 'package:vehical/widget/custom_bg_widget.dart';

class NumberOfWheelsScreen extends StatefulWidget {
  const NumberOfWheelsScreen({Key? key}) : super(key: key);

  @override
  State<NumberOfWheelsScreen> createState() => _NumberOfWheelsScreenState();
}

class _NumberOfWheelsScreenState extends State<NumberOfWheelsScreen> {
  List<int> noOfWheels = [2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return CustomBgWidget(
        child: Column(
      children: [
        Text("Please select No.Of Wheels"),
      ],
    ));
  }
}
