import 'package:get/get.dart';

import '../modules/generate_nft/bindings/generate_nft_binding.dart';
import '../modules/generate_nft/views/generate_nft_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/image_detail/bindings/image_detail_binding.dart';
import '../modules/image_detail/views/image_detail_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/root/bindings/root_binding.dart';
import '../modules/root/views/root_view.dart';
import '../modules/search/bindings/search_binding.dart';
import '../modules/search/views/search_view.dart';
import '../modules/stats/bindings/stats_binding.dart';
import '../modules/stats/views/stats_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(
      name: _Paths.ROOT,
      page: () => const RootView(),
      binding: RootBinding(),
    ),
    GetPage(
      name: _Paths.STATS,
      page: () => const StatsView(),
      binding: StatsBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.IMAGE_DETAIL,
      page: () => const ImageDetailView(),
      binding: ImageDetailBinding(),
    ),
    GetPage(
      name: _Paths.GENERATE_NFT,
      page: () => const GenerateNftView(),
      binding: GenerateNftBinding(),
    ),
  ];
}
