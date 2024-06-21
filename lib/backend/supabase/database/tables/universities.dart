import '../database.dart';

class UniversitiesTable extends SupabaseTable<UniversitiesRow> {
  @override
  String get tableName => 'universities';

  @override
  UniversitiesRow createRow(Map<String, dynamic> data) => UniversitiesRow(data);
}

class UniversitiesRow extends SupabaseDataRow {
  UniversitiesRow(super.data);

  @override
  SupabaseTable get table => UniversitiesTable();

  int get uniId => getField<int>('uni_id')!;
  set uniId(int value) => setField<int>('uni_id', value);

  String get uniName => getField<String>('uni_name')!;
  set uniName(String value) => setField<String>('uni_name', value);

  String? get uniMap => getField<String>('uni_map');
  set uniMap(String? value) => setField<String>('uni_map', value);

  String? get uniLogo => getField<String>('uni_logo');
  set uniLogo(String? value) => setField<String>('uni_logo', value);

  String? get uniDescription => getField<String>('uni_description');
  set uniDescription(String? value) =>
      setField<String>('uni_description', value);

  String? get uniMap1 => getField<String>('uni_map_1');
  set uniMap1(String? value) => setField<String>('uni_map_1', value);

  int? get uniIdRegion => getField<int>('uni_id_region');
  set uniIdRegion(int? value) => setField<int>('uni_id_region', value);

  String? get uniCity => getField<String>('uni_city');
  set uniCity(String? value) => setField<String>('uni_city', value);

  String? get uniAdress => getField<String>('uni_adress');
  set uniAdress(String? value) => setField<String>('uni_adress', value);

  String? get uniPostal => getField<String>('uni_postal');
  set uniPostal(String? value) => setField<String>('uni_postal', value);

  int? get uniCommunityId => getField<int>('uni_community_id');
  set uniCommunityId(int? value) => setField<int>('uni_community_id', value);
}
