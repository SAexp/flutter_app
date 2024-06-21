import '../database.dart';

class CommunityTable extends SupabaseTable<CommunityRow> {
  @override
  String get tableName => 'community';

  @override
  CommunityRow createRow(Map<String, dynamic> data) => CommunityRow(data);
}

class CommunityRow extends SupabaseDataRow {
  CommunityRow(super.data);

  @override
  SupabaseTable get table => CommunityTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get comName => getField<String>('com_name');
  set comName(String? value) => setField<String>('com_name', value);

  int? get comRegion => getField<int>('com_region');
  set comRegion(int? value) => setField<int>('com_region', value);

  int? get comUniversityId => getField<int>('com_university_id');
  set comUniversityId(int? value) => setField<int>('com_university_id', value);
}
