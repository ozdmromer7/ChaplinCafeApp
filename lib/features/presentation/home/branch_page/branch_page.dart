import 'package:chaplin_cafe_app/features/components/custom_progress_bar.dart';
import 'package:chaplin_cafe_app/features/presentation/home/branch_page/blocs/branch_view_model.dart';
import 'package:chaplin_cafe_app/features/presentation/home/branch_page/blocs/branch_state.dart';
import 'package:chaplin_cafe_app/features/presentation/home/branch_page/components/branch_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BranchesScreen extends StatelessWidget {
  const BranchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => BranchViewModel()..getBranches(),
        child: BlocConsumer<BranchViewModel, BranchState>(
          builder: (context, state) {
            return Scaffold(
              body: state.isLoading
                  ? const CustomProgressBar()
                  : ListView.builder(
                      itemCount: state.branchResponse?.length,
                      itemBuilder: (context, index) {
                        return BranchItem(
                            branchResponse: state.branchResponse?[index]);
                      },
                    ),
            );
          },
          listener: (BuildContext context, BranchState state) {},
        ));
  }
}
