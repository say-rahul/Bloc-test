
import 'package:supabase_flutter/supabase_flutter.dart';

class Authservice  {
  final SupabaseClient supabase = Supabase.instance.client;

  // ignore: non_constant_identifier_names
  Future <AuthResponse> Signin(String email,String password) async{
    return await supabase.auth.signInWithPassword(
      email:email,
      password: password
      );

  }
  // ignore: non_constant_identifier_names
  Future <AuthResponse> Signup(String email,String password) async{
    return await supabase.auth.signUp(
      email:email,
      password: password);

  }

 
  }
