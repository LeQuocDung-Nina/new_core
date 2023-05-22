import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/category_model.dart';
import '../repositories/category_repositories.dart';

class CategoryState{
  final List<CategoryModel>? listCategories;
  final bool loading;

  CategoryState({this.listCategories, this.loading = true});

  CategoryState copyWith({List<CategoryModel>? listCategories, bool? loading}){
    return CategoryState(
      listCategories: listCategories ?? this.listCategories,
      loading: loading ?? this.loading,
    );
  }
}

final categoryProvider = NotifierProvider<CategoryController, CategoryState>(() {
  return CategoryController();
});

class CategoryController extends Notifier<CategoryState> {
  final CategoryRepository _categoryRepository = CategoryRepository();

  @override
  CategoryState build(){
    return CategoryState();
  }

  Future<void> getAllCategories() async {
    final List<CategoryModel> listCategories = await _categoryRepository.getAllCategories();
    state = state.copyWith(listCategories: listCategories, loading: false);
    return Future(() => listCategories);
  }

  void tongleLoading(){
    state = state.copyWith(loading: !state.loading);
  }
}

class CategoryNotifier extends StateNotifier<CategoryState> {
  CategoryNotifier() : super(CategoryState());


}
