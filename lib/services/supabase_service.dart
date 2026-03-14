import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/item.dart';

class SupabaseService {
  final supabase = Supabase.instance.client;

  Future<List<Item>> getItems() async {
    final response = await supabase.from('items').select().order('nama');

    return (response as List).map((item) => Item.fromJson(item)).toList();
  }

  Future<void> addItem(Item item) async {
    await supabase.from('items').insert(item.toJson());
  }

  Future<void> updateItem(Item item) async {
    await supabase.from('items').update(item.toJson()).eq('id', item.id!);
  }

  Future<void> deleteItem(String id) async {
    await supabase.from('items').delete().eq('id', id);
  }
}
