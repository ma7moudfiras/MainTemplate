import 'package:flutter/material.dart';
import 'package:palventure/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:palventure/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:palventure/utils/constants/colors.dart';

class AppPrimaryHeaderContainer extends StatelessWidget {
  const AppPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppCurvedEdgeWidget(
      child: Container(
        color: AppColors.darkerGrey,
        padding: const EdgeInsets.all(0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [

            /// Decorative Circles
            Positioned(
              top: -150,
              right: -250,
              child: AppCircularContainer(
                backgroundColor: AppColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 150,
              right: -300,
              child: AppCircularContainer(
                backgroundColor: AppColors.white.withOpacity(0.1),
              ),
            ),

            /// The main child
            child,
            /// Decorative Circles
            Positioned(
              top: -150,
              right: -250,
              child: AppCircularContainer(
                backgroundColor: AppColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 150,
              right: -300,
              child: AppCircularContainer(
                backgroundColor: AppColors.white.withOpacity(0.1),
              ),
            ),

            /// The main child
            child,

          ],
        
        ),
      ),
    );
  }
}
