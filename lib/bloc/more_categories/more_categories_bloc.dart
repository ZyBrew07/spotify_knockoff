import 'package:flutter_application_1/model/categories/category_list_wrapper.dart';
import 'package:flutter_application_1/repository/spotify_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:freezed_annotation/freezed_annotation.dart";

part 'more_categories_bloc.freezed.dart';
part 'more_categories_state.dart';
part 'more_categories_event.dart';

class MoreCategoriesBloc
    extends Bloc<MoreCategoriesEvent, MoreCategoriesState> {

  final SpotifyRepository repo;

  MoreCategoriesBloc({required this.repo})
      : super(const MoreCategoriesState(categories: null)) {
    on<_Initialize>(_getMoreCategories);
  }

  Future<void> _getMoreCategories(
    _Initialize e,
    Emitter<MoreCategoriesState> emit
  ) async {

    final CategoryListWrapper categoryListWrapper = await repo.getMoreCategories();

   
     emit(state.copyWith(categories: categoryListWrapper));
  }
}


