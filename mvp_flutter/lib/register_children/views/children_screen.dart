import 'package:flutter/material.dart';
import 'package:mvp_flutter/register_children/models/child.dart';
import 'package:mvp_flutter/register_children/presenters/children_presenter.dart';
import 'package:provider/provider.dart';

class ChildrenScreen extends StatefulWidget {
  const ChildrenScreen({Key? key}) : super(key: key);

  @override
  State<ChildrenScreen> createState() => _ChildrenScreenState();
}

class _ChildrenScreenState extends State<ChildrenScreen> {
  final nameController = TextEditingController();
  late ChildrenPresenter childrenPresenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Children"),
      ),
      body: Column(
        children: [
          Consumer<ChildrenPresenter>(
            builder: (context, presenter, child) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: presenter.children.length,
                itemBuilder: (context, index) => ChildWidget(
                  childrenPresenter: childrenPresenter,
                  child: presenter.children[index],
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                  controller: nameController,
                  decoration:
                      const InputDecoration(label: Text("Child's name")),
                )),
                TextButton(
                    onPressed: () {
                      childrenPresenter.addChild(nameController.text);
                      nameController.text = '';
                    },
                    child: const Text("Register Child"))
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    childrenPresenter = Provider.of<ChildrenPresenter>(context, listen: false);
    super.initState();
  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget(
      {Key? key, required this.child, required this.childrenPresenter})
      : super(key: key);

  final ChildrenPresenter childrenPresenter;
  final Child child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(child.name),
          IconButton(
              onPressed: () {
                childrenPresenter.removeChild(child.name);
              },
              icon: const Icon(Icons.delete))
        ],
      ),
    );
  }
}
