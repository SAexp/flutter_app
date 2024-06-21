import '../database.dart';

class EventRegionTable extends SupabaseTable<EventRegionRow> {
  @override
  String get tableName => 'event_region';

  @override
  EventRegionRow createRow(Map<String, dynamic> data) => EventRegionRow(data);
}

class EventRegionRow extends SupabaseDataRow {
  EventRegionRow(super.data);

  @override
  SupabaseTable get table => EventRegionTable();

  int get evId => getField<int>('ev_id')!;
  set evId(int value) => setField<int>('ev_id', value);

  int get evRegionId => getField<int>('ev_region_id')!;
  set evRegionId(int value) => setField<int>('ev_region_id', value);

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
