import 'package:angio/utils/widgets/app_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ci.dart';
import 'package:iconify_flutter/icons/clarity.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/fluent.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/iconoir.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/tabler.dart';
import 'package:iconify_flutter/icons/uil.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      body: Stack(
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
      ),
      footer: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const _NavIcon(Eva.video_outline),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xfff13d3e),
              shape: BoxShape.circle,
            ),
            child: const Iconify(
              Fluent.call_24_filled,
              color: const Color.fromARGB(255, 225, 238, 244),
              size: 30,
            ),
          ),
          const _NavIcon(Mdi.microphone_outline),
        ]),
      ),
      bodyPadding: EdgeInsets.zero,
    );
  }
}

class _NavIcon extends StatelessWidget {
  const _NavIcon(this.icon, {Key? key}) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Color.fromARGB(10, 255, 255, 255),
          shape: BoxShape.circle,
        ),
        child: Iconify(
          icon,
          color: const Color.fromARGB(255, 225, 238, 244),
          size: 30,
        ),
      ),
    );
  }
}
