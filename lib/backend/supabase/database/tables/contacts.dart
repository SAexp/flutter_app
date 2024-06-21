import '../database.dart';

class ContactsTable extends SupabaseTable<ContactsRow> {
  @override
  String get tableName => 'contacts';

  @override
  ContactsRow createRow(Map<String, dynamic> data) => ContactsRow(data);
}

class ContactsRow extends SupabaseDataRow {
  ContactsRow(super.data);

  @override
  SupabaseTable get table => ContactsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get conFirstName => getField<String>('con_first_name');
  set conFirstName(String? value) => setField<String>('con_first_name', value);

  String? get conLastName => getField<String>('con_last_name');
  set conLastName(String? value) => setField<String>('con_last_name', value);

  int? get universityId => getField<int>('university_id');
  set universityId(int? value) => setField<int>('university_id', value);

  String? get conOffice => getField<String>('con_office');
  set conOffice(String? value) => setField<String>('con_office', value);

  String? get conEmail => getField<String>('con_email');
  set conEmail(String? value) => setField<String>('con_email', value);

  String? get conPhoto => getField<String>('con_photo');
  set conPhoto(String? value) => setField<String>('con_photo', value);

  String? get conRole => getField<String>('con_role');
  set conRole(String? value) => setField<String>('con_role', value);

  bool? get isAssoMember => getField<bool>('is_asso_member');
  set isAssoMember(bool? value) => setField<bool>('is_asso_member', value);

  String? get conPhoneNumber => getField<String>('con_phone_number');
  set conPhoneNumber(String? value) =>
      setField<String>('con_phone_number', value);
}
