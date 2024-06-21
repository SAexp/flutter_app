import '../database.dart';

class NewsTable extends SupabaseTable<NewsRow> {
  @override
  String get tableName => 'news';

  @override
  NewsRow createRow(Map<String, dynamic> data) => NewsRow(data);
}

class NewsRow extends SupabaseDataRow {
  NewsRow(super.data);

  @override
  SupabaseTable get table => NewsTable();

  int get newsId => getField<int>('news_id')!;
  set newsId(int value) => setField<int>('news_id', value);

  int get newsUniversityId => getField<int>('news_university_id')!;
  set newsUniversityId(int value) => setField<int>('news_university_id', value);

  String? get newsTilte => getField<String>('news_tilte');
  set newsTilte(String? value) => setField<String>('news_tilte', value);

  String? get newsDescription => getField<String>('news_description');
  set newsDescription(String? value) =>
      setField<String>('news_description', value);

  String? get newsPicture => getField<String>('news_picture');
  set newsPicture(String? value) => setField<String>('news_picture', value);

  DateTime? get newsDate => getField<DateTime>('news_date');
  set newsDate(DateTime? value) => setField<DateTime>('news_date', value);
}
