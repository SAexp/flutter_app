import '../database.dart';

class ParticipateTable extends SupabaseTable<ParticipateRow> {
  @override
  String get tableName => 'participate';

  @override
  ParticipateRow createRow(Map<String, dynamic> data) => ParticipateRow(data);
}

class ParticipateRow extends SupabaseDataRow {
  ParticipateRow(super.data);

  @override
  SupabaseTable get table => ParticipateTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get eventId => getField<int>('event_id');
  set eventId(int? value) => setField<int>('event_id', value);

  String? get studentId => getField<String>('student_id');
  set studentId(String? value) => setField<String>('student_id', value);

  bool? get participate => getField<bool>('participate');
  set participate(bool? value) => setField<bool>('participate', value);
}
