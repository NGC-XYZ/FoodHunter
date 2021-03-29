class User {
  final String name;
  final String email;
  final int age;
  final String gender;

  User(this.name, this.email, this.age, this.gender);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'],
        gender = json['gender'],
        email = json['email'];

  Map<String, dynamic> toJson() =>
      {
        'name': name,
        'email': email,
        'age': age,
        'gender': gender,
      };
}
