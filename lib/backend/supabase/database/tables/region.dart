import '../database.dart';

class RegionTable extends SupabaseTable<RegionRow> {
  @override
  String get tableName => 'region';

  @override
  RegionRow createRow(Map<String, dynamic> data) => RegionRow(data);
}

class RegionRow extends SupabaseDataRow {
  RegionRow(super.data);

  @override
  SupabaseTable get table => RegionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get regionName => getField<String>('region_name');
  set regionName(String? value) => setField<String>('region_name', value);

  int? get regionActualNumberOfStudent =>
      getField<int>('region_actual_number_of_student');
  set regionActualNumberOfStudent(int? value) =>
      setField<int>('region_actual_number_of_student', value);

  int? get regionAllTimeNumberOfStudents =>
      getField<int>('region_all_time_number_of_students');
  set regionAllTimeNumberOfStudents(int? value) =>
      setField<int>('region_all_time_number_of_students', value);

  int? get regionCountryId => getField<int>('region_country_id');
  set regionCountryId(int? value) => setField<int>('region_country_id', value);

  String? get regionCity => getField<String>('region_city');
  set regionCity(String? value) => setField<String>('region_city', value);
}
