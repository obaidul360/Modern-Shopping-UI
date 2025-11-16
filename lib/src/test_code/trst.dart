// phone_input_widget.dart
import 'package:flutter/material.dart';

class PhoneInputField extends StatefulWidget {
  final TextEditingController? controller;
  const PhoneInputField({Key? key, this.controller}) : super(key: key);

  @override
  State<PhoneInputField> createState() => _PhoneInputFieldState();
}

class _PhoneInputFieldState extends State<PhoneInputField> {
  String countryCode = '+880';
  String flagAsset = 'imageslogo/bangladesh_flag.png'; // put Bangladesh flag at this path
  // If you don't have local asset, you can use NetworkImage with a URL.

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: '1XXXXXXXXX',
        // Use prefix to put a custom widget (prefixIcon has constraints)
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 6.0),
          child: GestureDetector(
            onTap: _onCountryTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Flag
                Container(
                  width: 28,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    // Use AssetImage for local flag
                    image: DecorationImage(
                      image: AssetImage(flagAsset),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                // Country code text
                Text(
                  countryCode,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(width: 6),
                // Down arrow
                const Icon(Icons.keyboard_arrow_down, size: 20),
                const SizedBox(width: 6),
                // A vertical divider to separate prefix from phone input
                Container(
                  width: 1,
                  height: 28,
                  color: Colors.grey.shade300,
                ),
              ],
            ),
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  void _onCountryTap() async {
    // Implement your country picker here
    // Example: showModalBottomSheet to choose Bangladesh or others
    // For demo we just toggle between +880 and +91:
    setState(() {
      if (countryCode == '+880') {
        countryCode = '+91';
        flagAsset = 'imageslogo/bangladesh_flag.png';
      } else {
        countryCode = '+880';
        flagAsset = 'imageslogo/my_order.png';
      }
    });
  }
}
