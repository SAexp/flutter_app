import '../database.dart';

class SportTable extends SupabaseTable<SportRow> {
  @override
  String get tableName => 'sport';

  @override
  SportRow createRow(Map<String, dynamic> data) => SportRow(data);
}

class SportRow extends SupabaseDataRow {
  SportRow(super.data);

  @override
  SupabaseTable get table => SportTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get sportName => getField<String>('sport_name');
  set sportName(String? value) => setField<String>('sport_name', value);

  String? get sportSchedule => getField<String>('sport_schedule');
  set sportSchedule(String? value) => setField<String>('sport_schedule', value);

  String? get sportDescription => getField<String>('sport_description');
  set sportDescription(String? value) =>
      setField<String>('sport_description', value);

  String? get sportAdress => getField<String>('sport_adress');
  set sportAdress(String? value) => setField<String>('sport_adress', value);

  String? get sportPrice => getField<String>('sport_price');
  set sportPrice(String? value) => setField<String>('sport_price', value);

  int? get sportUniversity => getField<int>('sport_university');
  set sportUniversity(int? value) => setField<int>('sport_university', value);

  String? get sportPicture => getField<String>('sport_picture');
  set sportPicture(String? value) => setField<String>('sport_picture', value);
}
