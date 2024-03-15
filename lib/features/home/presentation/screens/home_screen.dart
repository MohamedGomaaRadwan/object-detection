import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:object_detection/features/home/presentation/screens/views/synced_gallary/view_model/synced_gallery_bloc.dart';
import 'package:object_detection/gen/assets.gen.dart';
import 'package:object_detection/ui/resources/app_colors.dart';
import 'package:object_detection/ui/widgets/app_svg_image.dart';
import '../../../../core/dependencies/dependency_init.dart';
import '../../../fcm/presentation/bloc/fcm_bloc.dart';
import 'views/home/view/home_view.dart';
import 'views/local_gallery/view/local_gallery_view.dart';
import 'views/local_gallery/view_model/local_gallery_bloc.dart';
import 'views/synced_gallary/view/synced_gallery_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 1;
  final LocalGalleryBloc _galleryBloc = getIt<LocalGalleryBloc>();
  final SyncedGalleryBloc _syncedGalleryBloc = getIt<SyncedGalleryBloc>();

  List<Widget> _appViewList() {
    return <Widget>[
      SyncedGalleryView(syncedGalleryBloc: _syncedGalleryBloc,),
      HomeView(galleryBloc: _galleryBloc),
      LocalGalleryView(galleryBloc: _galleryBloc,syncedGalleryBloc: _syncedGalleryBloc),
    ];
  }

  @override
  void initState() {
    context.read<FCMBloc>().add(FCMEvent.initMessage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentPageIndex, children: _appViewList()),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        indicatorColor: Colors.transparent,
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: _buildBottomNavigationBar(),
      ),
    );
  }

  List<Widget> _buildBottomNavigationBar() {
    return <Widget>[
      NavigationDestination(
        icon: AppSVGImage(
          width: 35,
          image: Assets.icons.cloud,
          color: currentPageIndex == 0 ? AppColors.primaryColor : AppColors.disabledColor,
        ),
        label: "",
      ),
      NavigationDestination(
        icon: AppSVGImage(
          width: 35,
          image: Assets.icons.home,
          color: currentPageIndex == 1 ? AppColors.primaryColor : AppColors.disabledColor,
        ),
        label: "",
      ),
      NavigationDestination(
        icon: AppSVGImage(
          width: 40,
          image: Assets.icons.save,
          color: currentPageIndex == 2 ? AppColors.primaryColor : AppColors.disabledColor,
        ),
        label: "",
      ),
    ];
  }
}
