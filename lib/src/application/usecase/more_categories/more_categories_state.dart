part of 'more_categories_bloc.dart';

@freezed
class MoreCategoriesState with _$MoreCategoriesState {
   const factory MoreCategoriesState({
     required CategoryListWrapper? categories,
  }) = _MoreCategoriesState;
}