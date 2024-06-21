import '../database.dart';

class UserRoleTable extends SupabaseTable<UserRoleRow> {
  @override
  String get tableName => 'user_role';

  @override
  UserRoleRow createRow(Map<String, dynamic> data) => UserRoleRow(data);
}

class UserRoleRow extends SupabaseDataRow {
  UserRoleRow(super.data);

  @override
  SupabaseTable get table => UserRoleTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get roleName => getField<String>('role_name')!;
  set roleName(String value) => setField<String>('role_name', value);
}
