class User {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final List<String> interests;
  final String bio;
  final String jobTitle;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls,
    required this.bio,
    required this.jobTitle,
    required this.interests,
  });

  @override
  List<Object?> get props => [id, name, age, imageUrls, bio, jobTitle];

  static List<User> users = [
    const User(
        id: 1,
        age: 21,
        name: "Habron",
        imageUrls: [
          'https://images.unsplash.com/photo-1663024718100-9250a83a1db5?ixlib=rb-1.2.1&ixid=Mn',
          'https://images.unsplash.com/photo-1663017933548-6692e8e0518d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx'
        ],
        jobTitle: "Brownie Land Model",
        bio: "Hot, Shy , Has difficulties opening doors",
        interests: ["Music", "Not Babysitting", "Doing AJ"]),
    const User(
        id: 2,
        age: 21,
        name: "Natalia",
        imageUrls: [
          'https://scontent-sjc3-1.xx.fbcdn.net/v/t39.30808-1/306559139_594500722321429_7475772281050738370_n.jpg?stp=dst-jpg_p320x320&_nc_cat=106&ccb=1-7&_nc_sid=7206a8&_nc_ohc=gwbeAM-75IcAX8NdL3j&_nc_ht=scontent-sjc3-1.xx&oh=00_AT-2ORaPwGZiWQ-kX-HA5tDyqB_YXV056UKz_XqfP79qKQ&oe=632DDEFF',
        ],
        jobTitle: "Brownie Land Model",
        bio:
            "Hot, Shy , Has difficulties opening doors, in love with brown guy, when you go brown they never let you down",
        interests: ["Music", "Not Babysitting", "Doing AJ"]),
    const User(
        id: 3,
        age: 21,
        name: "UnCair",
        imageUrls: [
          'https://images.unsplash.com/photo-1663017933548-6692e8e0518d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx'
        ],
        jobTitle: "Brownie Land Model",
        bio: "Hot, Shy , Has difficulties opening doors",
        interests: ["Music", "Not Babysitting", "Doing AJ"]),
    const User(
        id: 4,
        age: 21,
        name: "Joshua",
        imageUrls: [
          'https://images.unsplash.com/photo-1516522973472-f009f23bba59?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx',
          'https://images.unsplash.com/photo-1663017933548-6692e8e0518d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx'
        ],
        jobTitle: "Brownie Land Model",
        bio: "Hot, Shy , Has difficulties opening doors",
        interests: ["Music", "Not Babysitting", "Doing AJ"]),
    const User(
        id: 5,
        age: 21,
        name: "Emily",
        imageUrls: [
          'https://images.unsplash.com/photo-1554180842-41b1dd69d588?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8',
          'https://images.unsplash.com/photo-1663017933548-6692e8e0518d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx'
        ],
        jobTitle: "Brownie Land Model",
        bio:
            "Hot, Shy , Has difficulties opening doors, in love with brown guy, when you go brown they never let you down",
        interests: ["Music", "Not Babysitting", "Doing AJ"]),
    const User(
        id: 6,
        age: 21,
        name: "Ajlia",
        imageUrls: [
          'https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8',
          'https://images.unsplash.com/photo-1663017933548-6692e8e0518d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx'
        ],
        jobTitle: "Brownie Land Model",
        bio: "Hot, Shy , Has difficulties opening doors",
        interests: ["Music", "Not Babysitting", "Doing AJ"]),
    const User(
        id: 7,
        age: 21,
        name: "Ajlia",
        imageUrls: [
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8',
          'https://images.unsplash.com/photo-1663017933548-6692e8e0518d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx'
        ],
        jobTitle: "Brownie Land Model",
        bio: "Hot, Shy , Has difficulties opening doors",
        interests: ["Music", "Not Babysitting", "Doing AJ"]),
    const User(
        id: 8,
        age: 21,
        name: "Ajlia",
        imageUrls: [
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8',
          'https://images.unsplash.com/photo-1663017933548-6692e8e0518d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx'
        ],
        jobTitle: "Brownie Land Model",
        bio: "Hot, Shy , Has difficulties opening doors",
        interests: ["Music", "Not Babysitting", "Doing AJ"]),
    const User(
        id: 9,
        age: 21,
        name: "Ajlia",
        imageUrls: [
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8',
          'https://images.unsplash.com/photo-1663017933548-6692e8e0518d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx'
        ],
        jobTitle: "Brownie Land Model",
        bio: "Hot, Shy , Has difficulties opening doors",
        interests: ["Music", "Not Babysitting", "Doing AJ"]),
    const User(
        id: 10,
        age: 21,
        name: "Ajlia",
        imageUrls: [
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8',
          'https://images.unsplash.com/photo-1663017933548-6692e8e0518d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx'
        ],
        jobTitle: "Brownie Land Model",
        bio: "Hot, Shy , Has difficulties opening doors",
        interests: ["Music", "Not Babysitting", "Doing AJ"]),
    const User(
        id: 4,
        age: 21,
        name: "Ajlia",
        imageUrls: [
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8',
          'https://images.unsplash.com/photo-1663017933548-6692e8e0518d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx'
        ],
        jobTitle: "Brownie Land Model",
        bio: "Hot, Shy , Has difficulties opening doors",
        interests: ["Music", "Not Babysitting", "Doing AJ"]),
  ];
}
