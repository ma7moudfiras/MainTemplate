import 'package:flutter/material.dart';
import 'package:palventure/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:palventure/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:palventure/utils/constants/colors.dart';

class AppPrimaryHeaderContainer extends StatelessWidget {
  const AppPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppCurvedEdgeWidget(
      child: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.only(bottom: 0),

        child: SizedBox(
          height: 400,
          child: Stack(
            children: [

              /// White Circles
              Positioned(
                top: -150,
                right: -250,
                child: AppCircularContainer(
                  backgroundColor: AppColors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: AppCircularContainer(
                  backgroundColor: AppColors.white.withOpacity(0.1),
                ),
              ),
              child,



            ],
          ),
        ),
      ),
    );
  }
}

