import '../database.dart';

class EventUniversityTable extends SupabaseTable<EventUniversityRow> {
  @override
  String get tableName => 'event_university';

  @override
  EventUniversityRow createRow(Map<String, dynamic> data) =>
      EventUniversityRow(data);
}

class EventUniversityRow extends SupabaseDataRow {
  EventUniversityRow(super.data);

  @override
  SupabaseTable get table => EventUniversityTable();

  int get evId => getField<int>('ev_id')!;
  set evId(int value) => setField<int>('ev_id', value);

  int get evUniversityId => getField<int>('ev_university_id')!;
  set evUniversityId(int value) => setField<int>('ev_university_id', value);

  String? get evAddress => getField<String>('ev_address');
  set evAddress(String? value) => setField<String>('ev_address', value);

  DateTime? get evDate => getField<DateTime>('ev_date');
  set evDate(DateTime? value) => setField<DateTime>('ev_date', value);

  String? get evDescription => getField<String>('ev_description');
  set evDescription(String? value) => setField<String>('ev_description', value);

  String? get evName => getField<String>('ev_name');
  set evName(String? value) => setField<String>('ev_name', value);

  double? get evPrice => getField<double>('ev_price');
  set evPrice(double? value) => setField<double>('ev_price', value);

  String? get evPhoto => getField<String>('ev_photo');
  set evPhoto(String? value) => setField<String>('ev_photo', value);
}
