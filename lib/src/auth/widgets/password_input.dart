import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

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
            Icons.lock_outline,
            color: Colors.black54,
          ),
          Expanded(
            child: TextField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: '********',
                    hintStyle: TextStyle(color: Colors.black54),
                    contentPadding: EdgeInsets.only(left: 8)),
                controller: passwordController,
                obscureText: true),
          ),
        ],
      ),
    );
  }
}
