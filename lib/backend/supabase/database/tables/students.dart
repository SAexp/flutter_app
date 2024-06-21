import '../database.dart';

class StudentsTable extends SupabaseTable<StudentsRow> {
  @override
  String get tableName => 'students';

  @override
  StudentsRow createRow(Map<String, dynamic> data) => StudentsRow(data);
}

class StudentsRow extends SupabaseDataRow {
  StudentsRow(super.data);

  @override
  SupabaseTable get table => StudentsTable();

  int get stuUniversityId => getField<int>('stu_university_id')!;
  set stuUniversityId(int value) => setField<int>('stu_university_id', value);

  String? get stuAddress => getField<String>('stu_address');
  set stuAddress(String? value) => setField<String>('stu_address', value);

  String? get stuDateOfBirth => getField<String>('stu_date_of_birth');
  set stuDateOfBirth(String? value) =>
      setField<String>('stu_date_of_birth', value);

  String? get stuEmail => getField<String>('stu_email');
  set stuEmail(String? value) => setField<String>('stu_email', value);

  String? get stuFirstName => getField<String>('stu_first_name');
  set stuFirstName(String? value) => setField<String>('stu_first_name', value);

  String? get stuLastName => getField<String>('stu_last_name');
  set stuLastName(String? value) => setField<String>('stu_last_name', value);

  String? get stuPicture => getField<String>('stu_picture');
  set stuPicture(String? value) => setField<String>('stu_picture', value);

  String get studentId => getField<String>('student_id')!;
  set studentId(String value) => setField<String>('student_id', value);

  int? get stuNationalityId => getField<int>('stu_nationality_id');
  set stuNationalityId(int? value) =>
      setField<int>('stu_nationality_id', value);

  int? get studentUniComId => getField<int>('student__uni_com_id');
  set studentUniComId(int? value) =>
      setField<int>('student__uni_com_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get stuPhoneNumber => getField<String>('stu_phone_number');
  set stuPhoneNumber(String? value) =>
      setField<String>('stu_phone_number', value);

  int? get userRole => getField<int>('user_role');
  set userRole(int? value) => setField<int>('user_role', value);

  int? get studentRegionComId => getField<int>('student__region_com_id');
  set studentRegionComId(int? value) =>
      setField<int>('student__region_com_id', value);

  String? get stuSexe => getField<String>('stu_sexe');
  set stuSexe(String? value) => setField<String>('stu_sexe', value);

  String? get stuHomeCoordinatorEmail =>
      getField<String>('stu_home_coordinator_email');
  set stuHomeCoordinatorEmail(String? value) =>
      setField<String>('stu_home_coordinator_email', value);

  String? get stuStudyLevel => getField<String>('stu_study_level');
  set stuStudyLevel(String? value) =>
      setField<String>('stu_study_level', value);

  String? get stuSemester => getField<String>('stu_semester');
  set stuSemester(String? value) => setField<String>('stu_semester', value);
}
