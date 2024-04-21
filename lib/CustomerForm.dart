import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class CustomerForm extends StatelessWidget {
  const CustomerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lutfen bir deger giriniz';
                }
                return null;
              },
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lutfen bir deger giriniz';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Girilen bilgiler ok!')),
                  );
                }
              },
              child: const Text("Gonder"),
            )
          ],
        ),
      ),
    );
  }
}