import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'relevance_books_state.dart';

class RelevanceBooksCubit extends Cubit<RelevanceBooksState> {
  RelevanceBooksCubit(this.homeRepo) : super(RelevanceBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchReleventBooks({required String category}) async {
    emit(RelevanceBooksLoading());
    var result = await homeRepo.fetchNewestBook();
    result.fold((failure) => emit(RelevanceBooksFailure(failure.errorMessage)),
        (books) => emit(RelevanceBooksSucess(books)));
  }
}
