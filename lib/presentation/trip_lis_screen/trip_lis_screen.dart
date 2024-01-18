import '../trip_lis_screen/widgets/triptravelledgrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:hafidomio_s_application2/widgets/app_bar/custom_app_bar.dart';

class TripLisScreen extends StatelessWidget {
  const TripLisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 26.h, top: 4.v, right: 26.h),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 212.v,
                        crossAxisCount: 2,
                        mainAxisSpacing: 12.h,
                        crossAxisSpacing: 12.h),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return TriptravelledgridItemWidget();
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 63.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftPrimarycontainer,
            margin: EdgeInsets.only(left: 22.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Trip list"));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
