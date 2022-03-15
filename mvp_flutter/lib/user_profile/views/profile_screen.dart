import 'package:flutter/material.dart';
import 'package:mvp_flutter/register_children/views/children_screen.dart';
import 'package:mvp_flutter/user_profile/presenters/profile_presenter.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final phoneController = TextEditingController();
  late ProfilePresenter profilePresenter; //a reference to the presenter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Screen"),
      ),
      body: Consumer<ProfilePresenter>(
        builder: (context, presenter, child) {
          if (presenter.user == null) {
            return const Center(child: Text("Loading"));
          } else {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Element(title: "Name", value: presenter.user!.name),
                Element(
                    title: "Family Name", value: presenter.user!.familyName),
                Element(title: "Age", value: presenter.user!.age),
                Element(title: "Email", value: presenter.user!.email),
                Element(
                    title: "Phone Number", value: presenter.user!.phoneNumber),
                Element(title: "Evax Code", value: presenter.user!.evaxCode),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            label: Text("Edit Phone Number")),
                      )),
                      TextButton(
                          onPressed: () {
                            profilePresenter
                                .updatePhoneNumber(phoneController.text);
                          },
                          child: const Text("Update Phone Number"))
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ChildrenScreen(),
                    ));
                  },
                  child: const Text("Register Children"),
                )
              ],
            );
          }
        },
      ),
    );
  }

  @override
  void initState() {
    profilePresenter = Provider.of<ProfilePresenter>(context, listen: false);
    profilePresenter.fetchUser();
    super.initState();
  }
}

class Element extends StatelessWidget {
  const Element({Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 17),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 17),
          )
        ],
      ),
    );
  }
}
