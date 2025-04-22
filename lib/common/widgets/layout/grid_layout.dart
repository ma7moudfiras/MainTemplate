import 'package:flutter/material.dart';
import 'package:palventure/utils/constants/sizes.dart';

class AppGridLayout extends StatelessWidget {
  const AppGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(), // scroll outside
      shrinkWrap: true, // let height be based on children
      padding: EdgeInsets.zero,
      itemCount: itemCount,
      itemBuilder: (context, index) => itemBuilder(context, index)!,
      separatorBuilder: (context, index) => const SizedBox(height: AppSizes.gridViewSpacing),
    );
  }
}
