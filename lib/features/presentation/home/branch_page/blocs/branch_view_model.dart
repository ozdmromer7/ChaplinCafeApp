import 'package:chaplin_cafe_app/core/constant/constant.dart';
import 'package:chaplin_cafe_app/core/resources/resources.dart';
import 'package:chaplin_cafe_app/features/data/repository/service_repository_impl.dart';
import 'package:chaplin_cafe_app/features/domain/entities/branch_response.dart';
import 'package:chaplin_cafe_app/features/domain/repository/service_repository.dart';
import 'package:chaplin_cafe_app/features/presentation/home/branch_page/blocs/branch_state.dart';
import 'package:chaplin_cafe_app/features/data/data_sources/remote/cafe_service_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class BranchViewModel extends Cubit<BranchState> {
  BranchViewModel() : super(const BranchState(isLoading: false));

  Future<void> getBranches() async {
    ServiceRepository repository =
        ServiceRepositoryImpl(CafeServiceApi.instance!.dio);

    emit(const BranchState(isLoading: true));

    try {
      final response = await repository.getBranches(COMPANY_ID);
      if (response is Success<List<BranchResponse?>?>?) {
        emit(BranchState(
            isLoading: false, branchResponse: response?.data, error: ''));
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
