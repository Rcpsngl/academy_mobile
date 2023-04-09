import 'package:academy/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForumScreen extends StatefulWidget {
  const ForumScreen({Key? key}) : super(key: key);
  final bodyPadding = 70;
  @override
  _ForumScreenState createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen> {
// text fields' controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _text = TextEditingController();
  final CollectionReference _products =
      FirebaseFirestore.instance.collection('products');

  Future<void> _create([DocumentSnapshot? documentSnapshot]) async {
    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  controller: _text,
                  decoration: const InputDecoration(
                    labelText: 'Text',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Create'),
                  onPressed: () async {
                    final String name = _nameController.text;
                    final String text = _text.text;
                    if (text.isNotEmpty) {
                      await _products.add({
                        "name": name,
                        "text": text,
                        'like': '0',
                        'comment': ''
                      });

                      _nameController.text = '';
                      _text.text = '';
                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          );
        });
  }

  Future<void> _update([DocumentSnapshot? documentSnapshot]) async {
    if (documentSnapshot != null) {
      _nameController.text = documentSnapshot['name'];
      _text.text = documentSnapshot['text'];
    }

    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  controller: _text,
                  decoration: const InputDecoration(
                    labelText: 'Text',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Update'),
                  onPressed: () async {
                    final String name = _nameController.text;
                    final String text = _text.text;
                    if (text.isNotEmpty) {
                      await _products
                          .doc(documentSnapshot!.id)
                          .update({"name": name, "text": text});
                      _nameController.text = '';
                      _text.text = '';
                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          );
        });
  }

  Future<void> _delete(String productId) async {
    await _products.doc(productId).delete();

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('You have successfully deleted a product')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Forum'),
          backgroundColor: kKoyuArkaplan,
          centerTitle: true,
        ),
        body: StreamBuilder(
          stream: _products.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    color: kAcikArkaplan,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.black45,
                      ),
                      borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          //leading: Icon(Icons.arrow_drop_down_circle),
                          title: Text(
                            documentSnapshot['name'],
                            style: kLargeText,
                          ),
                          subtitle: Text(
                            'Secondary Text',
                            style: kSmallText,
                          ),
                        ),
                        Divider(thickness: 2),
                        ListTile(
                          //leading: Icon(Icons.arrow_drop_down_circle),
                          title:
                              Text(documentSnapshot['text'], style: kSmallText),
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.start,
                          children: [
                            Text(documentSnapshot['like'], style: kSmallText),
                            IconButton(
                                // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                icon: const FaIcon(
                                  FontAwesomeIcons.heart,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  print("Pressed");
                                }),
                            Text(documentSnapshot['comment'],
                                style: kSmallText),
                            IconButton(
                                padding: EdgeInsets.zero,
                                // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                icon: const FaIcon(
                                  FontAwesomeIcons.comment,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  print("Pressed");
                                }),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
// Add new product
        floatingActionButton: FloatingActionButton(
          backgroundColor: kNavBar2,
          onPressed: () => _create(),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
