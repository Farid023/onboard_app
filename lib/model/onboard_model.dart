import 'package:onboard_app/constants/app_assets.dart';

class OnboardModel {
  const OnboardModel({
    required this.image,
    required this.title,
    required this.description,
  });

  final String image;
  final String title;
  final String description;

  static const List<OnboardModel> onboardItems = [
    OnboardModel(
      image: AppAssets.onboard1,
      title: 'Find pet-care around your location',
      description: 'Just turn on your location and you will find the nearest pet care you wish.',
    ),
    OnboardModel(
      image: AppAssets.onboard2,
      title: 'Let us give the best treatment',
      description: 'Get the best treatment for your animal with us',
    ),
    OnboardModel(
      image: AppAssets.onboard3,
      title: 'Book appointment with us!',
      description: 'What do you think? book our veterinarians now',
    ),
  ];
}
