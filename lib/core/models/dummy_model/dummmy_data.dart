class DummyModelData {
  final String profileImage;
  final String title;
  final String time;
  final String degreeName;
  final String city;
  final String descriptionText;
  final List<String> postImages;
  final List<String> likeImages;
  final String likes;
  final String comments;
  final String share;

  DummyModelData(
      {required this.time,
      required this.degreeName,
      required this.city,
      required this.descriptionText,
       required this.postImages,
      required this.likeImages,
      required this.likes,
      required this.comments,
      required this.share,
      required this.profileImage,
      required this.title});
}

List<DummyModelData> dummyListData = [
  DummyModelData(
      time: "10 minutes",
      degreeName: "Software engineer",
      city: "California",
      descriptionText:
          "Physiological respiration involves the mechanisms that ensure that the composition of the functional residual capacity is kept of constant, and equilibrates with the gases dissolved in marketing pulmonary capillary blood, and thus throughout the body. ",
      postImages: [
        "assets/images/imageframe1.png",
        "assets/images/imageframe2.png",
        "assets/images/imageframe1.png",
        "assets/images/imageframe2.png",
      ],
      likeImages: [
        "assets/images/likeprofile1.png",
        "assets/images/likeprofile1.png",
        "assets/images/likeprofile1.png",
      ],
      likes: "Mike & 3 other like this image",
      comments: "3",
      share: "1",
      profileImage: "assets/images/profile2.png",
      title: "Edwin Martins"),
  DummyModelData(
      time: "4 minutes",
      degreeName: "Electrical  engineer",
      city: "Usa",
      descriptionText:
          "Physiological respiration involves the mechanisms that ensure that the composition of the functional residual capacity...",
      likeImages: [
        "assets/images/likeprofile1.png",
        "assets/images/likeprofile1.png",
        "assets/images/likeprofile1.png",
      ],
      postImages: [
        "assets/images/imageframe1.png",
        "assets/images/imageframe2.png",
        "assets/images/imageframe1.png",
        "assets/images/imageframe2.png",
      ],
      likes: "maaz & 3 other like this image",
      comments: "1",
      share: "2",
      profileImage: "assets/images/profile4.png",
      title: "Alampaera"),
  DummyModelData(
      time: "10 minutes",
      degreeName: "Software engineer",
      city: "California",
      descriptionText:
          "Physiological respiration involves the mechanisms that ensure that the composition of the functional residual capacity is kept of constant, and equilibrates with the gases dissolved in marketing pulmonary capillary blood, and thus throughout the body. ",
      postImages: [
        "assets/images/imageframe1.png",
        "assets/images/imageframe2.png",
        "assets/images/imageframe1.png",
        "assets/images/imageframe2.png",
      ],
      likeImages: [
        "assets/images/likeprofile1.png",
        "assets/images/likeprofile1.png",
        "assets/images/likeprofile1.png",
      ],
      likes: "Mike & 3 other like this image",
      comments: "3",
      share: "1",
      profileImage: "assets/images/profile2.png",
      title: "Edwin Martins"),
];
