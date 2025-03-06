import '../../../../core/helpers/app_images.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;
  String? name;

  BottomNavigationBarEntity(
      {required this.activeImage, required this.inActiveImage, this.name});
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
      //creating a list of BottomNavigationBarEntity to access them as objects in the NavigationBar widget
      BottomNavigationBarEntity(
          activeImage: Assets.homeFilled,
          inActiveImage: Assets.homeOutlined,
          name: "Home"),
      BottomNavigationBarEntity(
          activeImage: Assets.exploreFilled,
          inActiveImage: Assets.exploreOutlined,
          name: "Explore"),
      BottomNavigationBarEntity(
        activeImage: Assets.scissors,
        inActiveImage: Assets.scissors,
      ),
      BottomNavigationBarEntity(
          activeImage: Assets.messageFilled,
          inActiveImage: Assets.messageOutlined,
          name: "Message"),
      BottomNavigationBarEntity(
          activeImage: Assets.accountFiled,
          inActiveImage: Assets.accountOutlined,
          name: "Account"),
    ];
