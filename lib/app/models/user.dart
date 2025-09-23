class AppUser {
  final String uid;
  final String email;
  final String? userName;
  final String? sex;
  final String? phoneNumber;

  AppUser({
    required this.uid,
    required this.email,
    this.userName,
    this.sex,
    this.phoneNumber,
  });
  //firebase юзает мап, типо джейсон, сериализация
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'userName': userName,
      'sex': sex,
      'phoneNumber': phoneNumber,
    };
  }

  //Десиреализация
  factory AppUser.fromMap(Map<String, dynamic> map) {
    if (map.isEmpty) {
      return AppUser(
        uid: 'none',
        email: 'netyemaila@mail.ru',
        userName: 'poteriashka',
        sex: 'none',
        phoneNumber: 'none',
      );
    }
    return AppUser(
      uid: map['uid'],
      email: map['email'],
      userName: map['userName'],
      sex: map['sex'],
      phoneNumber: map['phoneNumber'],
    );
  }
}
