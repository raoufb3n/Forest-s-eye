import 'package:ainechack/core/helpers/commonLibs.dart';
import 'package:ainechack/features/Auth/view/widgets/CustomButton.dart';
import 'package:ainechack/features/home/view/widgets/CustomConatainer.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Hello Ahmed',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.white, fontSize: 24),
                  ),
                  Image.asset(
                    Assets.hiIcon,
                    height: 28,
                    width: 28,
                  )
                ],
              ),
              verticalSpace(32),
              Text(
                'My Devices',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 18),
              ),
              verticalSpace(16),
              SizedBox(
                width: context.screenWidth,
                height: 155.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    const CustomConatainer(
                      title: 'Camera #1',
                    ),
                    horizontalSpace(16),
                    const CustomConatainer(
                      title: 'Camera #2',
                    ),
                    horizontalSpace(16),
                    const CustomConatainer(
                      title: 'Camera #3',
                    ),
                  ],
                ),
              ),
              verticalSpace(24),
              Text(
                'Upload Video',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 18),
              ),
              verticalSpace(16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                width: context.screenWidth,
                height: 155.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onBackground,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
                child: Stack(
                  children: [
                    Text(
                      'Quickly upload videos to our AI fire detection model for forest monitoring',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CustomButton(
                        maximumSize: Size(126.w, 31.w),
                        minimumSize: Size(126.w, 31.w),
                        label: 'Join Us',
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
