import 'package:supabase_flutter/supabase_flutter.dart';

export 'database/database.dart';

const _kSupabaseUrl = 'https://gvqbydjmuoyxairdlcma.supabase.co/';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imd2cWJ5ZGptdW95eGFpcmRsY21hIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzQ3NTY0NjYsImV4cCI6MTk5MDMzMjQ2Nn0.j5hQ4FE153VLd4TjorsVh_Fwa8T9Ks3dr09laIwqaAg';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
