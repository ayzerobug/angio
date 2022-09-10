import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ci.dart';
import 'package:iconify_flutter/icons/ic.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: CachedNetworkImageProvider(
                  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Positioned(
          bottom: 15,
          right: 15,
          child: Container(
            height: 150,
            width: 110,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: CachedNetworkImageProvider(
                    "https://images.unsplash.com/photo-1602693130669-9c9e53cc320c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8d29tYW4lMjBzbWlsaW5nfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: const Color.fromARGB(159, 255, 255, 255),
                width: 2,
              ),
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const BackButton(
            color: Colors.white,
          ),
          Row(
            children: const [
              Iconify(
                Ic.outline_lock,
                color: Colors.white,
                size: 16,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "End-to-end encryption",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          const Iconify(
            Ci.user_plus,
            color: Colors.white,
          )
        ]),
      ],
    );
  }
}
