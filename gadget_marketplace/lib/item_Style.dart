import 'package:flutter/material.dart';

import 'package:gadget_marketplace/models/item.dart';

class GadgetItem extends StatelessWidget {
  const GadgetItem({Key? key, required this.gadget}) : super(key: key);
  final Gadgets gadget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: const Color.fromARGB(176, 158, 158, 158)),
                  color: const Color(0xf6f6f6),
                ),
                padding: const EdgeInsets.fromLTRB(12, 16, 12, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 189, 187, 187)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Image.network(
                            gadget.imageUrl[0],
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(bottom: 20))
                      ],
                    ),
                  ],
                )),
            Container(
              child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    " ${gadget.product}",
                    style: Theme.of(context).textTheme.titleMedium,
                  )),
            )
          ],
        ));
  }
}