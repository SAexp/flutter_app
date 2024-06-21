import '../database.dart';

class DatesTable extends SupabaseTable<DatesRow> {
  @override
  String get tableName => 'dates';

  @override
  DatesRow createRow(Map<String, dynamic> data) => DatesRow(data);
}

class DatesRow extends SupabaseDataRow {
  DatesRow(super.data);

  @override
  SupabaseTable get table => DatesTable();

  int get dateId => getField<int>('date_id')!;
  set dateId(int value) => setField<int>('date_id', value);

  int get dateUniversityId => getField<int>('date_university_id')!;
  set dateUniversityId(int value) => setField<int>('date_university_id', value);

  DateTime? get dateDate => getField<DateTime>('date_date');
  set dateDate(DateTime? value) => setField<DateTime>('date_date', value);

  String? get dateName => getField<String>('date_name');
  set dateName(String? value) => setField<String>('date_name', value);

  int? get dateCategory => getField<int>('date_category');
  set dateCategory(int? value) => setField<int>('date_category', value);

  int? get dateMonth => getField<int>('date_month');
  set dateMonth(int? value) => setField<int>('date_month', value);
}
