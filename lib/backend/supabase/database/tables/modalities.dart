import '../database.dart';

class ModalitiesTable extends SupabaseTable<ModalitiesRow> {
  @override
  String get tableName => 'modalities';

  @override
  ModalitiesRow createRow(Map<String, dynamic> data) => ModalitiesRow(data);
}

class ModalitiesRow extends SupabaseDataRow {
  ModalitiesRow(super.data);

  @override
  SupabaseTable get table => ModalitiesTable();

  int get modId => getField<int>('mod_id')!;
  set modId(int value) => setField<int>('mod_id', value);

  String? get modDescription => getField<String>('mod_description');
  set modDescription(String? value) =>
      setField<String>('mod_description', value);

  String? get modName => getField<String>('mod_name');
  set modName(String? value) => setField<String>('mod_name', value);

  int? get modUniversityId => getField<int>('mod_university_id');
  set modUniversityId(int? value) => setField<int>('mod_university_id', value);

  DateTime? get modDate => getField<DateTime>('mod_date');
  set modDate(DateTime? value) => setField<DateTime>('mod_date', value);

  String? get modUserId => getField<String>('mod_user_id');
  set modUserId(String? value) => setField<String>('mod_user_id', value);
}
