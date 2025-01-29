import "package:flutter/material.dart";
import "package:myapp/Signup.dart";
import "package:supabase_flutter/supabase_flutter.dart";


void main() async{
  Supabase.initialize(
    url: "https://cwmmeogdckeonyelwyyk.supabase.co",
   anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN3bW1lb2dkY2tlb255ZWx3eXlrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY5MTY5ODQsImV4cCI6MjA1MjQ5Mjk4NH0.dhAamH3y1sQXgpo17wtvxs_dt66NVYpXL4WuvX2e1C0");
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "S I G N U P",
      home: Signup(),
      );
  }
}