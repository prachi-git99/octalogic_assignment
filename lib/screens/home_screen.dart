import 'package:vehical/consts/consts.dart';
import 'package:vehical/screens/wheel_number_screen.dart';
import 'package:vehical/widget/custom_bg_widget.dart';
import 'package:vehical/widget/custom_button.dart';
import 'package:vehical/widget/custom_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return CustomBgWidget(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextField(
              controller: firstNameController,
              label: "First Name",
              hintText: "Please enter your First name",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your first name';
                }
                return null;
              },
            ),
            const SizedBox(height: commonPadding),
            CustomTextField(
              controller: lastNameController,
              label: "Last Name",
              hintText: "Please enter your last name",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your last name';
                }
                return null;
              },
            ),
            const SizedBox(height: commonPadding),
            CustomButton(
                text: "Next",
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NumberOfWheelsScreen()),
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
