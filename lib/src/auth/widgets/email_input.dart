import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          const Icon(
            Icons.mail_outline,
            color: Colors.black54,
          ),
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "example@email.com",
                  hintStyle: TextStyle(color: Colors.black54),
                  contentPadding: EdgeInsets.only(left: 8)),
              controller: emailController,
            ),
          ),
        ],
      ),
    );
  }
}
