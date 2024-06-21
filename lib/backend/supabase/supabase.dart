import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://plwisydqyvslmicabqpi.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsd2lzeWRxeXZzbG1pY2FicXBpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTM4OTc3MTgsImV4cCI6MjAyOTQ3MzcxOH0.uGCs0LD18BXvFMnwxXBuTv5PAOWavNcfdfFQiEE5OfI';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
