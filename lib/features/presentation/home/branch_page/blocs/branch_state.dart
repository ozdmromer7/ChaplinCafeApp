import 'package:chaplin_cafe_app/features/domain/entities/branch_response.dart';
import 'package:equatable/equatable.dart';

class BranchState extends Equatable {
  const BranchState({required this.isLoading, this.branchResponse, this.error});
  final bool isLoading;
  final List<BranchResponse?>? branchResponse;
  final String? error;

  @override
  List<Object?> get props => [isLoading, branchResponse, error];
}
