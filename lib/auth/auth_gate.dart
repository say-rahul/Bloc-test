import "package:flutter/material.dart";
import 'package:myapp/Signup.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AuthState>(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        // Show a loading indicator while waiting for the stream to load
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        // Check if the user is signed in or not
        if (snapshot.hasData && snapshot.data!.session != null) {
          return const Signup(); // Navigate to your Signup screen
        } else {
          // Return a fallback widget, e.g., Login screen
          return const Center(child: Text('Please sign in'));
        }
      },
    );
  }
}
